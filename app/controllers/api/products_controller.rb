class Api::ProductsController < ApplicationController
  def index
    sort_attribute = params[:sort]
    sort_order = params[:sort_order]
    search_term = params[:search]

    @products = Product.all

    if search_term
      @products = @products.where("name iLIKE ?", "%#{search_term}%")              
    end

    if sort_attribute && sort_order
      @products = @products.order(sort_attribute => sort_order)
    elsif 
      @products = @products.order(sort_attribute)
    end

    render 'index.json.jbuilder'
  end

  def create
    @product = Product.new(
                          name: params[:name],
                          price: params[:price],
                          description: params[:description]
                          )
    if @product.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def show
    @product = Product.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @product = Product.find(params[:id])

    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.description = params[:description] || @product.description

    if @product.save
      render "show.json.jbuilder"
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json: {message: "Player successfully destroyed"}
  end
end
