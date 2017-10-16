class Api::V1::FirebasesController < ApplicationController
	require 'fcm'
	def index
		fcm = FCM.new("AAAAfdAheBM:APA91bGy4_wmaiEbJQ2z8IdSiu7bxor5lwVhwook4whY98ovJZwWqOhEPItO9T-n0ag0B8f_ikJfVOvD3pZ4t3yPz-QbE6tF5FkLm3BlxB-M6VtbnVB53P8SQYlEafqUMXuAY5dkeuYS", :timeout => 30)
		registration_ids = ["fN16U_lDFM8:APA91bHt2yozE8n_1P7f4RajEUML-NKGnQUuAKS1AwfXQdI9qQGM14WytxIzgQWzMLsLHtUThc-X5QJynGdeCbedgH26-hGXFkhS3AnPucp7db1si0f5mHcxjGVSmOO5uVHVbwDquLyc"]
 
        options = {data: {
        	               message: "I am Data Message" }, 
                   notification: {
                                    title: "Message Title", 
                                    body: "I am Notifications",
                                    icon: "myicon"}
        }
        response = fcm.send(registration_ids, options)
        render json: response
	end
end
