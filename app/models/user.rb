class User < ApplicationRecord
  has_secure_password
  validates :name, :email, :password, presence: true
  validates :name, length: {maxmun: 15}
  validates :email, uniqueness: true
  # validates :email
end
