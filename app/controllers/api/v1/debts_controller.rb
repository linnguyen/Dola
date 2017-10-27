class Api::V1::DebtsController < ApplicationController
	before_action :authenticate_with_token!
	respond_to :json

	def index
		respond_with current_user.debts.all
	end
end
