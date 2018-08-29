Rails.application.routes.draw do
  namespace :api do
    get "/product_url" => "products#products_action"
    get "/many_products_url" => "products#many_products_action"

  end
end
