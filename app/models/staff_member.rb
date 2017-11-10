class StaffMember < ApplicationRecord
  has_secure_password


  has_many :products,       dependent: :destroy
  has_many :belts,          dependent: :destroy
  has_many :jackets,        dependent: :destroy
  has_many :pants,          dependent: :destroy
  has_many :pocket_chiefs,  dependent: :destroy
  has_many :shoes,          dependent: :destroy
  has_many :shurts,         dependent: :destroy
  has_many :tie_pins,       dependent: :destroy
  has_many :socks,          dependent: :destroy
  has_many :tie_necks,      dependent: :destroy
  has_many :vests,          dependent: :destroy
  has_many :coats,          dependent: :destroy
  has_many :mufflers,       dependent: :destroy
  has_many :ear_mufflers,   dependent: :destroy
  has_many :gants,          dependent: :destroy
  has_many :knits,          dependent: :destroy
  has_many :cuff_links,     dependent: :destroy
  has_many :lapel_pin,      dependent: :destroy
  has_many :hats,           dependent: :destroy
  has_many :others,         dependent: :destroy
  has_many :main_products,  dependent: :destroy


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
