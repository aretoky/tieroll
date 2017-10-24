module CommonEmail
  extend ActiveSupport::Concern

  # included do
  #   before_action :email_down, :email_white_space
  # end

  # protected
  def email_down
    self.email = email.downcase
  end

  def email_white_space
    self.email = email.gsub(" ", "")
  end
end
