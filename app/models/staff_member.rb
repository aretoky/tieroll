class StaffMember < ApplicationRecord
  has_secure_password
  before_save :company_white_space

  has_many :products, dependent: :destroy


  validates :company, presence: true, length: {maximum: 34}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }


  validates :password, length: {minimum: 6, maximum: 16}
  before_save{self.password = password.gsub(" ", "")}


  # protected
  # def email_down
  #   self.email = email.downcase
  # end
  #
  # def email_white_space
  #   self.email = email.gsub(" ", "")
  # end
  #
  # def company_white_space
  #   self.company = company.strip
  #   self.company = company.gsub(/\s+/, " ")
  # end


end
