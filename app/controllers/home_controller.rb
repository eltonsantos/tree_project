class HomeController < ApplicationController
  def index
    # Mostra todas as categorias
  	@categories = Category.all
    # Mostra todos as subcategorias
  	@subcategories = Subcategory.all
    # Mostra todos os produtos
  	@products = Product.all
    puts "Parâmetros: #{params}"
  end

  def show_category
    # Pega o id da categoria
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
    @subcategory = Subcategory.find(params[:subcategory_id])
    puts "Parâmetros: #{params}"
  end
end
