class Admin < ApplicationRecord
  has_secure_password

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  # validates :email, presence: true, uniqueness: true
  
  before_save{self.email = email.downcase}
  validates :name, presence: true
end
