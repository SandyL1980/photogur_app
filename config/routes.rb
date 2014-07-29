Rails.application.routes.draw do
  resources :reviews

  root to: 'pictures#index'

  devise_for :users

  resources :pictures do
	  member do
	      post :vote_up   
	    end
	    resources :reviews
	 end

  resources :categories
  resources :users

  
end
