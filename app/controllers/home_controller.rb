class HomeController < ApplicationController
  def index
  	@categories = Category.all
  	@subcategories = Subcategory.all
  	@products = Product.all
    puts "Parâmetros: #{params}"
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

  # Talvez não seja preciso... ou talvez sim
  def show_product
    @category = Category.find(params[:category_id])
    @subcategories = @category.subcategories
    @subcategory = Subcategory.find(params[:subcategory_id])
    @products = @subcategory.products
    puts "Parâmetros: #{params}"
  end
end
