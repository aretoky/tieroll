class Hat < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :name, :code, :hat_front, presence: true
  belongs_to :staff_member
  has_many :main_products


  mount_uploader :hat_front,  HatFrontUploader
  mount_uploader :hat_back,   HatBackUploader
  mount_uploader :hat_side,   HatSideUploader
  mount_uploader :hat_roof,   HatRoofUploader
  mount_uploader :hat_sole,   HatSoleUploader
  mount_uploader :hat_inner,  HatInnerUploader
  mount_uploader :hat_one,    HatOneUploader
  mount_uploader :hat_two,    HatTwoUploader
end
