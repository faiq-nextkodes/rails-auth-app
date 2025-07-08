class AddBrandsRefToProducts < ActiveRecord::Migration[8.0]
  def change
    add_reference :products, :brands, foreign_key: true
  end
end
