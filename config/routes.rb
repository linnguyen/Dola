Rails.application.routes.draw do
	#Api definition
	namespace :api, defaults:{format:: json} do
       scope module: :v1 do
       end
	end
end
