class User < ApplicationRecord
  include EmailExchange

  before_validation do
    self.email = normalize_as_email(email)
    self.email = email.downcase if email 
  end


  has_secure_password
  # 開発中は面倒なので切っておく
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  validates :name, presence: true, length: {maximum: 15, minimum: 4}
  validates :password, presence: true, allow_nil: true#TODO,開発中はオフ length: {minimum: 6, maximum: 16}

  # validates :email, uniqueness: true, presence: true

  protected
  # def email_down
  #   self.email = email.downcase
  # end

  # def email_white_space
  #   self.email = email.strip
  #   self.email = email.gsub(" ", "")
  # end

end
