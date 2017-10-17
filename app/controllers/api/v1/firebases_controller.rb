class Api::V1::FirebasesController < ApplicationController
	require 'fcm'
	require 'rufus-scheduler'
	def index
		scheduler = Rufus::Scheduler.new
		scheduler.every '5s' do

		fcm = FCM.new("AAAAfdAheBM:APA91bGy4_wmaiEbJQ2z8IdSiu7bxor5lwVhwook4whY98ovJZwWqOhEPItO9T-n0ag0B8f_ikJfVOvD3pZ4t3yPz-QbE6tF5FkLm3BlxB-M6VtbnVB53P8SQYlEafqUMXuAY5dkeuYS", :timeout => 30)
		registration_ids = ["de3CPURUE4Q:APA91bGoB9nqni4nt1qeU5eJ-pbdW-galF7JEvL_nXgSSFmynhCbXnou4dyZWGNqvpGfxoU-zl3X8GH6Euhc7-QwCi8On9twDs4Leqyu1NNApmYR81E5vahr7B29tqaMRMT2A7STqrF6"]
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
