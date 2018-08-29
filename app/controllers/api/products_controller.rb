class Api::ProductsController < ApplicationController
  def hammer_action
    @hammer = Product.first
    render 'first_hammer.json.jbuilder'
  end

  def many_hammers_action
    @hammers = Product.all
    render 'many_hammers.json.jbuilder'
  end
end
