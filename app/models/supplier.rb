class Supplier < ApplicationRecord
  validates :name, presence: true
  has_many :product_suppliers
  has_many :products, through: :product_suppliers
end
