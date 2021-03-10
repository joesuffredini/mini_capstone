class Api::OrdersController < ApplicationController

  def index
    if current_user
      @products = Product.all
      render "index.json.jb"
    else
      render json:  {error: "need to be logged in" }, status:401
    end
  end


  def create
    product = Product.find_by(id: params[:product_id])  
    subtotal = product.price * params[:quantity].to_i
    tax = subtotal * 0.09
    total = subtotal + tax

    @orders = Order.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: subtotal,
      tax:  tax,
      total: total,
     )

    @orders.save
    render "show.json.jb"
  end


end
