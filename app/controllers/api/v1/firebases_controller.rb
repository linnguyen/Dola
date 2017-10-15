class Api::V1::FirebasesController < ApplicationController
	require 'fcm'

	def index
		fcm = FCM.new("AAAAfdAheBM:APA91bGy4_wmaiEbJQ2z8IdSiu7bxor5lwVhwook4whY98ovJZwWqOhEPItO9T-n0ag0B8f_ikJfVOvD3pZ4t3yPz-QbE6tF5FkLm3BlxB-M6VtbnVB53P8SQYlEafqUMXuAY5dkeuYS")
		registration_ids= ["12", "13"] # an array of one or more client registration tokens
		options = {data: {score: "123"}, collapse_key: "updated_score"}
		response = fcm.send(registration_ids, options)
    end
end
