class HomeController < ApplicationController
  def index
  	@categories = Category.all
  	@subcategories = Subcategory.all
  	@products = Product.all
  end
end
