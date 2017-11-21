class Knit < ApplicationRecord
  validates :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :name, :code, :knit_front, presence: true
  belongs_to :staff_member
  has_many :main_products
  

  mount_uploader :knit_front,   KnitFrontUploader
  mount_uploader :knit_back,    KnitBackUploader
  mount_uploader :knit_hem,     KnitHemUploader
  mount_uploader :knit_collar,  KnitCollarUploader
  mount_uploader :knit_inner,   KnitInnerUploader
  mount_uploader :knit_neck,    KnitNeckUploader
  mount_uploader :knit_one,     KnitOneUploader
  mount_uploader :knit_two,     KnitTwoUploader
  mount_uploader :knit_three,   KnitThreeUploader
end
