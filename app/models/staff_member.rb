class StaffMember < ApplicationRecord
  has_secure_password
  has_many :products, dependent: :destroy

  has_many :belts, :jackets, :pants, :pocket_chiefs, :shoes, :shurts, :tie_pins, :sockes, :ties, :vests, :others, dependent: :destroy


  validates :company, presence: true, length: {maximum: 34}
  before_save :company_white_space, :email_white_space, :email_down


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }


  validates :password, length: {minimum: 6, maximum: 16}



  protected
  def email_down
    self.email = email.downcase
  end

  def email_white_space
    self.email = email.strip
    self.email = email.gsub(" ", "")
  end

  def company_white_space
    self.company = company.strip
    self.company = company.gsub(/\s+/, " ")
  end


end
