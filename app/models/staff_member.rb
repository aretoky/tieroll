class StaffMember < ApplicationRecord
  has_secure_password
  has_many :products, dependent: :destroy
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
end
