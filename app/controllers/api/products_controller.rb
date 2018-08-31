class Api::ProductsController < ApplicationController
  def index
    @hammers = Product.all
    render 'index.json.jbuilder'
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

  def show
    @hammer = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @hammer = Product.find(params[:id])

    @hammer.name = params[:name] || @hammer.name
    @hammer.price = params[:name] || @hammer.price
    @hammer.image_url = params[:name] || @hammer.image_url
    @hammer.description = params[:name] || @hammer.description

    @hammer.save
    render "show.json.jbuilder"
  end

  def destroy
    @hammer = Product.find(params[:id])
    @hammer.destroy
    render json: {message: "Player successfully destroyed"}
  end
end
