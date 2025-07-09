class Brand < ApplicationRecord

  include Reviewable

  validates :brand_name, presence: true

  has_many :products, dependent: :destroy

end
