class Api::V1::DebtsController < ApplicationController
	before_action :authenticate_with_token!
	respond_to :json
end
