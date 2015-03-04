class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  # Why didn't this work?
  def shopping_cart_quantity
    @order = Order.find_by(:user_id => current_user.id, :status => "carted")
    @carted_products = CartedProduct.where(:order_id => @order.id)
    if @order
      @carted_products_quantity_total = @carted_products.sum(:quantity)
    end
    @carted_products_quantity_total
  end

  protected

  def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end

  private

  def authenticate_admin!
   if !(user_signed_in? && current_user.admin)
     flash[:warning] = "Please don't do this"
     redirect_to '/'
   end
  end

  # def verify_is_admin
  #   (current_user.nil?) ? redirect_to(root_path) : (redirect_to(root_path) unless current_user.admin?)
  # end
end
