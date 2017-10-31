class TiePin < ApplicationRecord
  validates :staff_member, presence: true

  mount_uploader :tie_pin_one,    TiePinOneUploader
  mount_uploader :tie_pin_two,    TiePinTwoUploader
  mount_uploader :tie_pin_three,  TiePinThreeUploader
end
