Rails.application.routes.draw do
  namespace :api do
    get "/hammers" => 'products#index'
    post "/hammers" => 'products#create'
    get "/hammers/:id" => 'products#show'
    patch "/hammers/:id" => 'products#update'
    delete "/hammers/:id" => 'products#destroy'
  end
end
