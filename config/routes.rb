Rails.application.routes.draw do
  namespace :api do
    get "/hammers" => 'products#index'
    get "/hammers/:id" => 'products#show'
    post "/hammers" => 'products#create'
  end
end
