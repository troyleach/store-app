class Order < ActiveRecord::Base
  # belongs_to  :product we can remove this bc we deleted it from this table
  belongs_to  :user
  belongs_to  :product_option
  has_many    :carted_products
  has_many    :products, :through => :carted_products


  SALES_TAX = 0.09
  #The below methods no longer work, I assume issues with the associations above?
  # def calculate_subtotal
  #   return product.price * quantity
  # end

  # def calculate_tax
  #   return SALES_TAX * calculate_subtotal
  # end

  # def calculate_total
  #   return calculate_subtotal + calculate_tax
  # end

  def carted
    return "carted"
  end

  def purchased
    # if order.status == "carted"
    #   carted_products.quantity + quantity
    # end

  end



end
