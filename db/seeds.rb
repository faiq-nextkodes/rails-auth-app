# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Brand.create([
  { brand_name: "ASUS" },
  { brand_name: "Adidas"},
  { brand_name: "Nvidia" },
  { brand_name: "AMD" }
])

Product.create([
  { name: "R7 7800 x3D", price: 70000, brand_id: 4, type: "Processor" },
  { name: "RTX 5090", price: 1050000, brand_id: 3, type: "GraphicsCard" },
  { name: "R5 5600 x", price: 32000, brand_id: 4, type: "Processor" },
  { name: "GTX 1080 ti", price: 450000, brand_id: 3, type: "GraphicsCard" }
])

Supplier.create([
  { name: "Zahh" },
  { name: "Techmatched" },
  { name: "Xtreme" }
])

ProductSupplier.create([
  { product_id: 1, supplier_id: 1 },
  { product_id: 2, supplier_id: 1 },
  { product_id: 3, supplier_id: 2 },
  { product_id: 3, supplier_id: 1 },
  { product_id: 4, supplier_id: 2 }
])

Admin.create([
  {email: "admin@admin.com", password: "admin123"}
])

Visitor.create([
  {email: "visitor@visitor.com", password: "visitor123"}
])

prod = Product.all

prod.each do |product|
  (0..5).each do |var|
    product.reviews.create(rating: 4)
  end
end

br = Brand.all

br.each do |brand|
  (0..5).each do |var|
    brand.reviews.create(rating: 4)
  end
end