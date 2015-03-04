class CartedProductsController < ApplicationController
  # I had to turn this off to get the app to work!! below if ON, this will brake the shopping cart!
  # before_action :authenticate_user!#, :only => [:create]

  def index
    
      @order = Order.find_by(:user_id => current_user.id, :status => "carted")
      @carted_products = CartedProduct.where(:order_id => @order.id)
      
      if @order
        @carted_products = @order.carted_products
        @carted_products_subtotal = @order.calculate_subtotal
        #the below line works but I'm trying to get this into the model RIGHT?
        @carted_products_quantity_total = @carted_products.sum(:quantity)
        # @carted_products_quantity_total = @carted_products.quantity_total 
      else
        flash[:warning] = "There is nothing in your shopping cart!"
        redirect_to "/"
      end
    
  end

  def create
    
    order = Order.find_by(:status => "carted", :user_id => current_user.id)
    product = Product.find(params[:product_id])
    quantity = params[:quantity].to_i

      if order
        CartedProduct.create(:product_id => params[:product_id], :quantity => params[:quantity], :order_id => order.id)
        order.subtotal = order.calculate_subtotal
        order.tax      = order.calculate_tax
        order.total    = order.calculate_total
        order.save
        
      else
        Order.create(:status => "carted", :user_id => current_user.id)
        CartedProduct.create(:product_id => params[:product_id], :quantity => params[:quantity], :order_id => order.id)
        
      end
    flash[:success] = "Added to shopping cart!"
    redirect_to '/'


  end

  def destroy
    @carted_products = CartedProduct.find(params[:id])
    @carted_products.destroy
    flash[:danger] = "Product Deleted"
    redirect_to '/'
  end

  # private

  # def method_name
  #   #this would run from the before_action at the top of the page
  # end
end
