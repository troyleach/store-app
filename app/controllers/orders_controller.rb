class OrdersController < ApplicationController

  def update
    order = Order.find(params[:id])
    order.update(:status => "purchased")

    flash[:success] = "Thanks for shopping!"
    redirect_to "/products"
  end

  #my hack job below - for shopping cart
  # def create
  #   product     = Product.find(params[:product_id])
  #   quantity    = params[:quantity].to_i

  #   carted  = Order.find_by(:user_id => current_user.id, :status => "carted")
  #   empty   = CartedProduct.find_by(:product_id => product)
  #   puts carted.status == "carted"
  #   puts empty.inspect == nil
  #   if empty == nil
  #       order = Order.new({:user_id => current_user.id})
  #       puts order.status.inspect
  #       order.status = order.carted
  #       order.subtotal = quantity * product.price
  #       order.tax = order.subtotal * 0.09
  #       order.total = order.tax + order.subtotal
  #       # order.subtotal = order.calculate_subtotal
  #       # order.tax = order.calculate_tax
  #       # order.total = order.calculate_total 
  #       order.save
  #       carted = Order.find_by(:user_id => current_user.id, :status => "carted")
  #       purchased = Order.find_by(:user_id => current_user.id, :status => "purchased")
  #       CartedProduct.create({:quantity => quantity, :product_id => product.id, :order_id => order.id})
  #   end
  #   flash[:success] = "thanks for shopping OrdersController"
  #   redirect_to "/carted-products"
  # end

end

