class CartedProduct < ActiveRecord::Base
  belongs_to  :product 
  belongs_to  :order

  def calculate_price
    return product.price * quantity
  end

  def quantity_total
   return @carted_products.sum(:quantity)
  end

end
