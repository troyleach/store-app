class ProductsController < ApplicationController
  # before_filter :verify_is_admin
  before_action :authenticate_admin!, :only => [:edit, :destroy]


  def index
    @products = Product.all
    @daily_deals = @products.sample(3)


    if params[:display] == "price"
      @products = @products.where("price < ?", 3000)
      @discount_display = "Todays Discounts"
    end

    if params[:price] == "order"
      @products = @products.order(:price => :asc)
      @discount_display = "Sorted lowest to highest"
    end

    if params[:category]
      @products = Category.find_by(:name => params[:category]).products
      @discount_display = "Category: #{params[:category].capitalize}"
    end

    if params[:search]
      @products = @products.where('title LIKE ?', "%#{params[:search]}%")
    end
    # @products = @products.where(:title => params[:search])
    # @products = @products.where('title LIKE ?', "%" + params[:search] + "%")
  end

  def new
    @product = Product.new
    @product_category_name  = Category.all
    @vendor_name            = Vendor.all
  end

  def create
    category = Category.find_by(:name => params[:category_id]) 
    vendor   = Vendor.find_by(:name => params[:vendor_id])
puts "THIS IS CATEGORY and VENDOR .INSPECT"
puts category.inspect
puts vendor.inspect
    @product = Product.new({:price => params[:price], :title => params[:title], :image => params[:image], :description => params[:description], :vendor_id => vendor.id}) 

    # @product_category  = CategorizedProduct.find_by(:product_id => @product.id)

    @product_category = CategorizedProduct.new({:category_id => category.id})

    puts "THIS IS PRODUCT, SHOULD HAVE ALL I NEED FOR CATEGORY******"
    puts @product.inspect
    if @product.save && @product_category.save
      @new_product = Product.last
      flash[:success] = "This Product added"
      redirect_to "/products/#{@new_product.id}"
    else
      flash[:message] = "Something was wrong with your form"
      render "new"
    end

    puts "*******THIS IS PRODUCT, DID IT RUN? WHAT DOES IT SAY******"
    puts @product.inspect
    puts @product_category.inspect
    @product_category.update({:product_id => @product.id})
    puts @product_category.inspect

  end

  def show
    if params[:id] == "random"
      @product = Product.all.sample
      @product_category_name = CategorizedProduct.find_by(:product_id => @product.id)
    else
      @product = Product.find(params[:id])
      @product_category_name = CategorizedProduct.find_by(:product_id => params[:id])
    end

    @options = ProductOption.all
    @images = Image.all
    
  end


  def edit
    # if user_signed_in? && current_user.admin
      @product                = Product.find(params[:id])
      @product_category       = CategorizedProduct.find_by(:product_id => params[:id])
      @product_category_name  = Category.all
      @vendor_name            = Vendor.all
      # @product = Category.find_by(:id => params[:category]).product
    # else
    #   flash[:warning] = "Please don't do this"
    # end
  end


  def update
    @product = Product.find(params[:id])
    @product_category = CategorizedProduct.find_by(:product_id => params[:id])
  
    category = Category.find_by(:name => params[:category_name])
    vendor = Vendor.find_by(:name => params[:vendor_name])
    
    @product.update({:price => params[:price], :title => params[:title], :image => params[:image], :description => params[:description], :vendor_id => vendor.id})
    
    @product_category.update({:category_id => category.id})
    
  end
  

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    flash[:danger] = "Product Deleted"
    redirect_to '/'
  end

end
