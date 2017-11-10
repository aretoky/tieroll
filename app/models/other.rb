class Other < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :other_one, presence: true
  belongs_to :staff_member


  mount_uploader :other_one,        OtherOneUploader
  mount_uploader :other_two,        OtherTwoUploader
  mount_uploader :other_three,      OtherThreeUploader
  mount_uploader :other_four,       OtherFourUploader
  mount_uploader :other_five,       OtherFiveUploader
end
