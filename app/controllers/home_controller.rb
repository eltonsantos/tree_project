class HomeController < ApplicationController
  # 
  def index
    # Mostra todas as categorias
  	@categories = Category.all
    # Mostra todos as subcategorias
  	@subcategories = Subcategory.all
    # Mostra todos os produtos
  	@products = Product.all
  end

  # 
  def show_category
    # Pega o id da categoria
  	@category = Category.find(params[:id])
    @subcategories = @category.subcategories
    @products = Product.all
  end

  # 
  def show_subcategory
    @category = Category.find(params[:id])
    @subcategory = Subcategory.find(params[:id])
    @products = @subcategory.products
  end
end
