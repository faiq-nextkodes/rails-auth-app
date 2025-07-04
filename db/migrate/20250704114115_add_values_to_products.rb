class AddValuesToProducts < ActiveRecord::Migration[8.0]
  def change
    Product.create(name: "USS Midway", price: 8379993030000)
  end
end
