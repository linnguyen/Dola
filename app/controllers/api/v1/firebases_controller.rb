class Api::V1::FirebasesController < ApplicationController
	require 'fcm'
	require 'rufus-scheduler'
	def index
		scheduler = Rufus::Scheduler.new
		scheduler.every '5s' do

		fcm = FCM.new("AAAAfdAheBM:APA91bGy4_wmaiEbJQ2z8IdSiu7bxor5lwVhwook4whY98ovJZwWqOhEPItO9T-n0ag0B8f_ikJfVOvD3pZ4t3yPz-QbE6tF5FkLm3BlxB-M6VtbnVB53P8SQYlEafqUMXuAY5dkeuYS", :timeout => 30)
		registration_ids = ["eHHoriDoC3E:APA91bGHI0UFjKYRmseU_lTCEzs1EHZyEODcHuHBKChDAEmwyCK0JrZKykFK-2HifqRi-LdZhyiJU-nSVgN3-IOb9Od90sSMlGt0j9dnoYq_IObiLNJjovnkiR6-MRrJeoNAZOqA2d2e"]
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
end
