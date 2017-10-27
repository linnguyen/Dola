Rails.application.routes.draw do
  devise_for :users
	#Api definition
	namespace :api, defaults: {format: :json}  do
       scope module: :v1 do
           resources :users do
           	 resources :payments, :only => [:create, :update, :destroy]
           end
           resources :payments, :only => [:index, :show]
           resources :debts, :only => [:index]
           resources :sessions, :only => [:create, :destroy]
           resources :firebases, :only => [:index]
       end
	end
end
