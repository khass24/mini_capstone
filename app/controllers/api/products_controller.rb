class Api::ProductsController < ApplicationController
  def index
    @hammers = Product.all
    render 'index.json.jbuilder'
  end

  def show
    @hammer = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @hammer = Product.new(
                          name: params[:name],
                          price: params[:price],
                          image_url: params[:image_url],
                          description: params[:description]
                          )
    @hammer.save
    render 'show.json.jbuilder'
  end
end
