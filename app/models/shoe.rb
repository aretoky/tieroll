class Shoe < ApplicationRecord
  validates :staff_member, presence: true


  mount_uploader :shoes_one,    ShoesOneUploader
  mount_uploader :shoes_two,    ShoesTwoUploader
  mount_uploader :shoes_three,  ShoesThreeUploader
  mount_uploader :shoes_four,   ShoesFourUploader
  mount_uploader :shoes_five,   ShoesFiveUploader
end
