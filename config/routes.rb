Rails.application.routes.draw do
 
  #Root
  root "pages#index"

  #Device For USers
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  
  #Administrator Page
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  


  resources :codecasts

  get '/codecasts'  => "codecasts#index"


  
  



  get "/index" => "pages#index"

  get "/courses" => "courses#index"

  match 'users/auth/:provider/callback', to: 'sessions#create', via: 'get'
	match 'users/auth/failure', to: redirect('/'), via: 'get'
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup

  resources :courses do
	  resources :subchapters
	end
   

end
