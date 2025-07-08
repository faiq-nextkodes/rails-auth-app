class UpdateProducts < ActiveRecord::Migration[8.0]
  def change
    execute("Update Products Set brands_id = 1 where brands_id Is NULL;")
  end
end
