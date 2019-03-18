Rails.application.routes.draw do
	namespace :api do
	  namespace :v1 do
    resources :messages
    root to: 'api/v1/messages#index'
    get 'report', to: 'messages#report'
   end
 end
end
