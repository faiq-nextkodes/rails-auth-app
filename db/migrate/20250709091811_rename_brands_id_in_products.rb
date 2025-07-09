class RenameBrandsIdInProducts < ActiveRecord::Migration[8.0]
  def change
    raname_column :products, :brands_id, :brand_id
  end
end
