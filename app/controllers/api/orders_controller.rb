class Api::OrdersController < ApplicationController

def create
  if current_user
    @products = Order.new(
    user_id: current_user,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: Product.find(params[:product_id]).price * params[:quantity].to_i,
    tax: Product.find(params[:product_id]).tax * params[:quantity].to_i,
    total: Product.find(params[:product_id]).total * params[:quantity].to_i
    @order.save
    render json: { message: "Order completed" }
  else
    render json: { error: "you have to be logged in to order" }
  end

end
