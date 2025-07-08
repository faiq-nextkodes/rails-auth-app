class AddPriceConstraintToProducts < ActiveRecord::Migration[8.0]
  def change
    add_check_constraint :products, "price > 10", name: "price_constraint"
  end
end
