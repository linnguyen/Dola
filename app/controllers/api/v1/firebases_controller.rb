class Api::V1::FirebasesController < ApplicationController
	def index
		fcm = FCM.new("AAAAfdAheBM:APA91bGy4_wmaiEbJQ2z8IdSiu7bxor5lwVhwook4whY98ovJZwWqOhEPItO9T-n0ag0B8f_ikJfVOvD3pZ4t3yPz-QbE6tF5FkLm3BlxB-M6VtbnVB53P8SQYlEafqUMXuAY5dkeuYS", :timeout => 30)
        options = {:notification => "Test notification", 
           :data => {:message => "This is a FCM Topic Message!"}}
        response = fcm.send_to_topic('global', options)
	end
end
