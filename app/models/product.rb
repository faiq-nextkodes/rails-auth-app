class Product < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :price, presence: true, numericality: { greater_than: 0 }
  validate :min_price_10
  before_create :capitalize_product_name
  before_save :capitalize_product_name

  private

  def min_price_10
    if price.present? && price <= 10
      errors.add(:price, "is too low") if price && price <= 10
    end
  end

  def capitalize_product_name
    self.name = name.capitalize
  end

end