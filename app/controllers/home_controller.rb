class HomeController < ApplicationController
  def index
  	@categories = Category.all
  	@subcategories = Subcategory.all
  	@products = Product.all
  end

  def show_category
    @category = Category.find(params[:id])
    @subcategories = @category.subcategories
    @subcategory = Subcategory.find(params[:id])
    @products = @subcategory.products
    puts "Parâmetros: #{params}"
  end

  def show_subcategory
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:id])
    @products = @subcategory.products
    puts "Parâmetros: #{params}"
  end

  def show_product
    @category = Category.find(params[:category_id])
    @subcategories = @category.subcategories
    @subcategory = Subcategory.find(params[:subcategory_id])
    @product = Product.find(params[:id])
    puts "Parâmetros: #{params}"

  # EXPLICAÇÃO
  # category = Category.new
  # category.subcategories # muitas subcategories

  # subcategory = SubCategory.new
  # subcategory.category # pertence a uma categoria
  # subcategory.products # muitos produtos

  # product = Product.new
  # product.subcategory # pertence a uma subcategoria

  # product.subcategory # acessa a subcategoria
  # product.subcategory.product # acessa a categoria através da subcategoria

  # http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html#method-i-has_many
  # http://api.rubyonrails.org/classes/ActiveRecord/Associations/ClassMethods.html#method-i-belongs_to

  end
end
