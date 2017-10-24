class StaffMember < ApplicationRecord
  has_secure_password
  has_many :products, dependent: :destroy

  validates :company, presence: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }

  protected
  def email_down
    self.email = email.downcase
  end

  def email_white_space
    self.email = email.gsub(" ", "")
  end


end
