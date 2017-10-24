class Admin < ApplicationRecord

  before_save :email_down, :email_white_space

  has_secure_password


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }


  validates :name, presence: true, length: { minimum: 4, maximum: 16}
  before_save{self.name = name.gsub(/\s+/, "")}


  validates :password, length: { minimun: 4, maximum: 16}



  protected
  def email_down
    self.email = email.downcase
  end

  def email_white_space
    self.email = email.strip
    self.email = email.gsub(/(\s+)/, "")
  end

end
