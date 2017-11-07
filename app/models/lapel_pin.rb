class LapelPin < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :lapel_pin_name, :lapel_pin_code, :lapel_pin_one, presence: true
  belongs_to :staff_member


  mount_uploader :lapel_pin_one,    LapelOneUploader
  mount_uploader :lapel_pin_two,    LapelTwoUploader
  mount_uploader :lapel_pin_three,  LapelThreeUploader
  mount_uploader :lapel_pin_four,   LapelFourUploader
  mount_uploader :lapel_pin_five,   LapelFiveUploader
end
