class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render "index.json.jb"
  end

  def show
    input = params[:id]
    @products = Product.find_by(id: input)
    render "show.json.jb"
  end

  def create
    @products = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
    )
    @products.save
    render "show.json.jb"
    # if @products.save
    #   render "show.json.jb"
    # else 
    #   render json: { errors: @products.errors.full_message }, status: 406
    # end 
  end

  def update
    input = params[:id]
    @products = Product.find_by(id: input)
    @products.name = params[:name] || @products.name
    @products.price = params[:price] || @products.price
    @products.image_url = params[:image_url] || @products.image_url
    @products.description = params[:description] || @products.description
    @products.save
    render "show.json.jb"
  end

  def destroy
    input = params[:id]
    products = Product.find_by(id: input)
    products.destroy
    render json: { message: "This product succesfully destroyed" }
  end
end
