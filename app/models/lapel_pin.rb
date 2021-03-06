class LapelPin < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :name, :code, :lapel_pin_one, presence: true
  belongs_to :staff_member
  has_many :machandises


  mount_uploader :lapel_pin_one,    LapelPinOneUploader
  mount_uploader :lapel_pin_two,    LapelPinTwoUploader
  mount_uploader :lapel_pin_three,  LapelPinThreeUploader
  mount_uploader :lapel_pin_four,   LapelPinFourUploader
  mount_uploader :lapel_pin_five,   LapelPinFiveUploader
end
