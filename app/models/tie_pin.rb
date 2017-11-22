class TiePin < ApplicationRecord
  validates :staff_member, :name, :code, :tie_pin_one, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member
  has_many :machandises


  mount_uploader :tie_pin_one,    TiePinOneUploader
  mount_uploader :tie_pin_two,    TiePinTwoUploader
  mount_uploader :tie_pin_three,  TiePinThreeUploader
end
