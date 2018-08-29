class Api::ProductsController < ApplicationController
  def products_action
    @hammer = Product.first
    render 'products.json.jbuilder'
  end

  def many_products_action
    @hammers = Product.all
    render 'many_products.json.jbuilder'
  end
end
