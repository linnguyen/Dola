class Api::V1::IncomesController < ApplicationController
	before_action :authenticate_with_token! # only: [:create, :update,]
	respond_to :json

	def index
		respond_with current_user.incomes.all
	end
end
