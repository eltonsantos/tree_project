# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.create id: 1, name: "Tecnologia"
Category.create id: 2, name: "Casa"
Category.create id: 3, name: "Cultura e Lazer"

Subcategory.create id: 1, name: "Telefonia", category_id: 1
Subcategory.create id: 2, name: "Informática", category_id: 1
Subcategory.create id: 3, name: "Móveis", category_id: 2
Subcategory.create id: 4, name: "Cama, Mesa e Banho", category_id: 2
Subcategory.create id: 5, name: "Eletrodoméstico", category_id: 2
Subcategory.create id: 6, name: "Livros", category_id: 3

Product.create id: 1, name: "Zenfone 2", subcategory_id: 1
Product.create id: 2, name: "Notebook", subcategory_id: 2
Product.create id: 3, name: "Macbook", subcategory_id: 2
Product.create id: 4, name: "Mesa", subcategory_id: 3
Product.create id: 5, name: "Sofá", subcategory_id: 3
Product.create id: 6, name: "Guarda roupa", subcategory_id: 3
Product.create id: 7, name: "Toalha", subcategory_id: 4
Product.create id: 8, name: "Microondas", subcategory_id: 5
Product.create id: 9, name: "Arcondicionado", subcategory_id: 5
Product.create id: 10, name: "O Senhor dos Anéis", subcategory_id: 6
Product.create id: 11, name: "Vampiro: a Máscara", subcategory_id: 6