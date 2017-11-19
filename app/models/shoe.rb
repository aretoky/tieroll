class Shoe < ApplicationRecord
  validates :staff_member, :name, :code, :shoe_front, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member

  mount_uploader :shoe_front,     ShoeFrontUploader
  mount_uploader :shoe_back,      ShoeBackUploader
  mount_uploader :shoe_inner,     ShoeInnerUploader
  mount_uploader :shoe_out_side,  ShoeOutSideUploader
  mount_uploader :shoe_sole,      ShoeSoleUploader
  mount_uploader :toe,            ToeUploader
  mount_uploader :shoe_one,       ShoeOneUploader
  mount_uploader :shoe_two,       ShoeTwoUploader
  mount_uploader :shoe_three,     ShoeThreeUploader
  mount_uploader :shoe_four,      ShoeFourUploader
  mount_uploader :shoe_five,      ShoeFiveUploader
end
