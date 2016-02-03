Rails.application.routes.draw do

  get 'home/index'
  get 'home/category/:id' => 'home#show_category', as: :home_category
  get 'home/category/:category_id/subcategory/:id' => 'home#show_subcategory', as: :home_subcategory
  get 'home/category/:category_id/subcategory/:subcategory_id/product/:id' => 'home#show_product', as: :home_product

  root "home#index"

  # resources :products
  # resources :subcategories
  # resources :categories

  resources :categories do
    resources :subcategories do
      resources :products
    end
  end

end