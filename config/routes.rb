Rails.application.routes.draw do
  root "pages#index"
  

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  

  get "/app" => "pages#app"
  get "/index" => "pages#index"

  get "/courses" => "courses#index"

  match '/auth/:provider/callback', to: 'sessions#create', via: 'get'
	match '/auth/failure', to: redirect('/'), via: 'get'
	get 'signout', to: 'sessions#destroy', as: 'signout'

end
