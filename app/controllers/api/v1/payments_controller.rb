class Api::V1::PaymentsController < ApplicationController
	before_action :authenticate_with_token! # only: [:create, :update,]
	respond_to :json

	def index
		respond_with current_user.payments.all
	end

	def create
		payment = current_user.payments.build(payment_params)
		if payment.save
			render json: payment, status: 201, location: [:api, payment]
		else
			render json: {errors: payment.errors}, status: 422
		end
	end

	def update
		payment = current_user.payments.find(params[:id])
		if payment.update(payment_params)
			render json: payment, status: 200, location: [:api, payment]
		else
			render json: {errors: payment.errors}, status: 422
		end
	end

	def destroy
		payment = current_user.payments.find(params[:id])
		payment.destroy
		head 204
	end

	private 

	def payment_params
		params.require(:payment).permit(:name, :fee)
	end
end
