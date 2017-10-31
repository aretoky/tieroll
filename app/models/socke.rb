class Socke < ApplicationRecord
  validates :staff_member, presence: true

  mount_uploader :sockes_one,     SockesOneUploader
  mount_uploader :sockes_two,     SockesTwoUploader
  mount_uploader :sockes_three,   SockesThreeUploader
end
