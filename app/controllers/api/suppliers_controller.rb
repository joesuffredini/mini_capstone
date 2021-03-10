class Api::SuppliersController < ApplicationController

  def index
    @suppliers = Supplier.all
    render "index.json.jb"
  end

  def show
    input = params[:id]
    @supplier = Supplier.find_by(id: input)
    render "show.json.jb"
  end

  def create
    @supplier = Supplier.new(
    name: params[:name],
    email: params[:price],
    phone_number: params[:phone_number],
    )

  #Happy/sad path
    if @supplier.save
      render "show.json.jb"
    else 
      render json: { errors: @suppliers.errors.full_message }, status: 406
    end 
  end

  def show
    @supplier = Supplier.find_by(id: params[:id])
    render "show.json.jb"
  end


  def update
    input = params[:id]
    @supplier = Supplier.find_by(id: input)
    @supplier.name = params[:name] || @supplier.name
    @supplier.email = params[:email] || @supplier.email
    @supplier.phone_numnber = params[:phone_number] || @supplier.phone_number
  
  #Happy/sad path
    if @supplier.save
      render "show.json.jb"
    else
      render json: { errors: @suppliers.errors.full_messages }, status: 406
    end
  end


  def destroy
    input = params[:id]
    supplier = Supplier.find_by(id: input)
    supplier.destroy
    render json: { message: "This product succesfully destroyed" }
  end
end
