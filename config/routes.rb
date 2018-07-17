Rails.application.routes.draw do

  namespace :admin do
    resources :users, only: [:index]
    root 'application#index'
    resources :categories, only: [:index, :new, :create, :edit, :update, :destroy]
  end
  devise_for :users
 
  resources :users, only: [:show]
  resources :categories, only: [:show]
	root "home#index"
	resources :events do
    resources :comments, only: [:create]
    resources :attendances, only: [:create]
  end  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
