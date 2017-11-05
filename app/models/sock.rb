class Sock < ApplicationRecord
  validates :staff_member, presence: true
  belongs_to :staff_member


  mount_uploader :socks_one,     SocksOneUploader
  mount_uploader :socks_two,     SocksTwoUploader
  mount_uploader :socks_three,   SocksThreeUploader
end
