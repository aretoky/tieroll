class Belt < ApplicationRecord
  validates :staff_member, :belt_one, presence: true
  belongs_to :staff_member


  mount_uploader :belt_one,     BeltOneUploader
  mount_uploader :belt_two,     BeltTwoUploader
  mount_uploader :belt_three,   BeltThreeUploader

end
