Rails.application.routes.draw do
  namespace :api do
    get "/hammers" => "products#products_action"
    get "/many_hammers" => "products#many_products_action"
  end
end
