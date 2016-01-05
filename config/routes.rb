Rails.application.routes.draw do
 
  #Root
  root "pages#index"

  #Device For USers
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  localized do 
    devise_for :users
  end
  
  #Administrator Page
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  


  resources :codecasts

  get '/codecasts'  => "codecasts#index"

  localized do 
    resources :codecasts
  end



  get "/index" => "pages#index"

  get "/courses" => "courses#index"

  localized do 
    get '/index', to: 'pages#index', as: :index
    
    get "/courses", to: "courses#index", as: :courses
  end

  match 'users/auth/:provider/callback', to: 'sessions#create', via: 'get'
	match 'users/auth/failure', to: redirect('/'), via: 'get'
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup

  resources :courses do
	  resources :subchapters
	end

  localized do 
    resources :courses do
      resources :subchapters
    end
  end
   

end
