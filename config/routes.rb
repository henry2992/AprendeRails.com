Rails.application.routes.draw do
  root "pages#index"

  get "/app" => "pages#app"
  get "/index" => "pages#index"

  match '/auth/:provider/callback', to: 'sessions#create', via: 'get'
	match '/auth/failure', to: redirect('/'), via: 'get'
	get 'signout', to: 'sessions#destroy', as: 'signout'

end
