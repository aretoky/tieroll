class Shoe < ApplicationRecord
  validates :staff_member, :shoes_name, :shoes_code, :shoes_one, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member


  mount_uploader :shoes_one,    ShoesOneUploader
  mount_uploader :shoes_two,    ShoesTwoUploader
  mount_uploader :shoes_three,  ShoesThreeUploader
  mount_uploader :shoes_four,   ShoesFourUploader
  mount_uploader :shoes_five,   ShoesFiveUploader
end
