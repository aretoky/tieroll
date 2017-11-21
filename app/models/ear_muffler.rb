class EarMuffler < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :name, :code, :ear_muffler_front, presence: true
  belongs_to :staff_member
  has_many :main_products


  mount_uploader :ear_muffler_front,  EarMufflerFrontUploader
  mount_uploader :ear_muffler_back,   EarMufflerBackUploader
  mount_uploader :ear_muffler_inner,  EarMufflerInnerUploader
  mount_uploader :ear_muffler_one,    EarMufflerOneUploader
  mount_uploader :ear_muffler_two,    EarMufflerTwoUploader
  mount_uploader :ear_muffler_three,  EarMufflerThreeUploader
  mount_uploader :ear_muffler_four,   EarMufflerFourUploader

end
