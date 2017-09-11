class Admin < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  before_save{self.email = email.downcase}
  validates :name, presence: true
end
