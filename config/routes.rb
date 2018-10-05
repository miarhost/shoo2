Rails.application.routes.draw do
  
  resources :messages, only: [:create, :index], :defaults => { :format => 'json' } do
   	 post :sort_amount, :on => :collection
  	 post :sort_name, :on => :collection
  end
  
  root 'messages#index'
  resolve ("Messages") { [:messages] }

end
