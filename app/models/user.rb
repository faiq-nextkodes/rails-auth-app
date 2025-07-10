class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  before_create :set_type

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  # validates :type, presence: true

  def set_type
    self.type = "Visitor"
  end
end
