Rails.application.routes.draw do
  namespace :admin do
    root 'application#index'
  end
  devise_for :users
 
  resources :users, only: [:show]
	root "events#index"
	resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
