class Product < ActiveRecord::Base
  belongs_to  :vendor
  has_many    :product_options
  has_many    :orders
  has_many    :images
  has_many    :categorized_products
  has_many    :categories, :through => :categorized_products
  
  has_many    :carted_products
  has_many    :orders, :through => :carted_products

  # validates :price, numericality: true
  # validates :price, numericality: { only_integer: true }
  # validates :price, presence: true
  # validates :title, presence: true
  # validates :image, presence: true

#p.valid?
#p.errors 'run this in rails c sees if a object is valid'
# p.errors.messages - this will give you {:title=>["can not be blank"]}


  def discount_message
    if price < 2000
      "THIS PRODUCT IS ON SALE"
    else
      "THIS ITEM IS DISCOUNTED!"
    end
  end

  def daily_discount_message
    price - discount_computation
  end

  def discount_computation
    daily_deals_discount = price * 0.25
  end

  def tax_computation
    price * 0.09
  end

  def add_tax
    tax_computation + price
  end

end
