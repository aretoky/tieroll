class User < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true
  validates :name, length: {maximum: 15}
  validates :email, uniqueness: true
  validates :password, presence: true, allow_nil: true
  before_save{self.email = email.downcase}
end
