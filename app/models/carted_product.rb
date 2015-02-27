class CartedProduct < ActiveRecord::Base
  belongs_to  :product 
  belongs_to  :order

  def calculate_subtotal
    return product.price * quantity
  end
  
end
