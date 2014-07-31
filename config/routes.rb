Rails.application.routes.draw do
  root to: 'pictures#index'
  

  resources :reviews

  resources :users
  devise_for :users

  resources :pictures do
	  member do
	      post :vote_up   
	    end
	    resources :reviews
	 end

  resources :categories
 

  
end
