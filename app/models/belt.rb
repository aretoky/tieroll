class Belt < ApplicationRecord
  validates :staff_member, presence: true


  mount_uploader :belt_one,     BeltOneUploader
  mount_uploader :belt_two,     BeltTwoUploader
  mount_uploader :belt_three,   BeltThreeUploader

end
