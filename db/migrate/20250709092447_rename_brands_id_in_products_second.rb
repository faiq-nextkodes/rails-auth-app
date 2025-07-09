class RenameBrandsIdInProductsSecond < ActiveRecord::Migration[8.0]
  def change
        rename_column :products, :brands_id, :brand_id
  end
end
