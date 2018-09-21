class Api::OrdersController < ApplicationController
  before_action :authenticate_user, only: [:index, :create]

  def index
    @orders = current_user.orders
    render 'index.json.jbuilder'
  end

  def create
    carted_products = current_user.cart

    subtotal = 0
    carted_products.each do |carted_product|
      subtotal += carted_product.quantity * carted_product.product.price
    end

    tax = subtotal * 0.09
    total = subtotal + tax

    @order = Order.new(
                       user_id: current_user.id,
                       subtotal: subtotal,
                       tax: tax,
                       total: total
                      )
    @order.save

    carted_products.update_all(status: "purchased", order_id: @order_id)
    
    render 'show.json.jbuilder'
  end
end
