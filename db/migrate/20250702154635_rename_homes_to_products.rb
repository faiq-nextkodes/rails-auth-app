class RenameHomesToProducts < ActiveRecord::Migration[8.0]
  def change
    rename_table :homes, :products
  end
end
