class Product < ApplicationRecord

  validates :name, presence: { message: "must be provided."}, uniqueness: true
  validates :price, presence: { message: "must be provided."}, numericality: { greater_than: 0 }
  before_create :capitalize_product_name
  before_save :capitalize_product_name
  validates_with PriceCheckValidator
  # validate :min_price_10

  belongs_to :brand

  private

  # def min_price_10
  #   if price.present? && price <= 10
  #     errors.add(:price, "is too low") if price && price <= 10
  #   end
  # end

  def capitalize_product_name
    self.name = name.capitalize
  end

end
