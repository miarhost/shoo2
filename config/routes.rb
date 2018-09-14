Rails.application.routes.draw do
  
  resources :messages, only: [:create, :index] do
  		 post :sort_amount
  	    end
  root 'messages#index'
  
end
