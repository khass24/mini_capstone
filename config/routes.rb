Rails.application.routes.draw do
  namespace :api do
    get "/product" => "welcomes#hello"
  end
end
