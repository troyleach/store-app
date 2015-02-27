class CartedProductsController < ApplicationController
  
  before_action :authenticate_user!#, :only => [:create]

  def index
    # if user_signed_in?
      # The below code check the database to see if the user has a product in their cart if not redirect to home page!
      @order = Order.find_by(:user_id => current_user.id, :status => "carted")
      if @order
        @carted_products = @order.carted_products
      else
        flash[:warning] = "There is nothing in your shopping cart!"
      end
    # else
    #   flash[:warning] = "you can't do that!"
    #   redirect_to "/"
    # end

    # my hack job
    # @products = Product.all
    # @cart = Order.where(user_id: 6)
    # @total_cart = @cart.where(cart.user_id => 6).sum(:quantity)
    
    # @total_cart = cart[0].carted_products(:user_id => 6).sum(:quantity)

    # @total_cart = cart.each do |x|
    #   place_holder = x.carted_products(:user_id => 6).sum(:quantity)
    #   place_holder.inject(:+)
    # end
    # @troy = Order.where('user_id = 6', (:quantity))
    # @troy = @troy.inspect
    #@leach = CartedProduct.where('quantity', :user_id => 6)
  end

  def create
    order = Order.find_by(:status => "carted", :user_id => current_user.id)
    # Above code creates a variable with the users id, IF order status is true create a new product row in the existing cart (this means the user has an cart in process.) ELSE create a new order and a new shopping cart for that session.
    if order
      CartedProduct.create(:product_id => params[:product_id], :quantity => params[:quantity], :order_id => order.id)
    else
      Order.create(:status => "carted", :user_id => current_user.id)
      CartedProduct.create(:product_id => params[:product_id], :quantity => params[:quantity], :order_id => order.id)
    end

    flash[:success] = "Added to shopping cart!"
    redirect_to '/'
  end

  # private

  # def method_name
  #   #this would run from the before_action at the top of the page
  # end
  


end
