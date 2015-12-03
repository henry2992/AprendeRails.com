Rails.application.routes.draw do
  root "pages#app"

  get "/app" => "pages#app"

end
