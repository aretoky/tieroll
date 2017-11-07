class Belt < ApplicationRecord
  validates :staff_member, :belt_name, :belt_code, :belt_one, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member


  mount_uploader :belt_one,     BeltOneUploader
  mount_uploader :belt_two,     BeltTwoUploader
  mount_uploader :belt_three,   BeltThreeUploader
  mount_uploader :belt_four,    BeltFourUploader
end
