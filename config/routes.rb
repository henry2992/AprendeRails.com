Rails.application.routes.draw do
  root "pages#index"

  get "/app" => "pages#app"
  get "/index" => "pages#index"

end
