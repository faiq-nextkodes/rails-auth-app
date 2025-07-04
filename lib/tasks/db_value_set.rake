namespace :prod_add do
  desc "Adding a Value in Product DB"
  task :add_val, [:prod_name, :prod_price] => :environment do |task, args|
    products = Product.new(name: args[:prod_name], price: args[:prod_price])
    products.save
  end
end