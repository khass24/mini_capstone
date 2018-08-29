Rails.application.routes.draw do
  namespace :api do
    get "/first_hammer" => "products#hammer_action"
    get "/many_hammers" => "products#many_hammers_action"
  end
end
