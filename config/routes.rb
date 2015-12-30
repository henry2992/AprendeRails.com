Rails.application.routes.draw do
 
  devise_for :users
  
  get '/codecasts'  => "codecasts#index"


  root "pages#index"
  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  

  get "/app" => "pages#app"
  get "/index" => "pages#index"

  get "/courses" => "courses#index"

  match 'users/auth/:provider/callback', to: 'sessions#create', via: 'get'
	match 'users/auth/failure', to: redirect('/'), via: 'get'
	get 'signout', to: 'sessions#destroy', as: 'signout'

  resources :courses do
	  resources :subchapters
	end
   

end
