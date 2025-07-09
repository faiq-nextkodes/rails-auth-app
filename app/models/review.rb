class Review < ApplicationRecord
  validates :rating, presence: true
  belongs_to :reviewable, polymorphic: true
end
