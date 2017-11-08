class Hat < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :hat_front, presence: true
  belongs_to :staff_member


  mount_uploader :hat_frotn,  :HatFrontUploader
  mount_uploader :hat_back,   :HatBackUploader
  mount_uploader :hat_side,   :HatSideUploader
  mount_uploader :hat_roof,   :HatRoofUploader
  mount_uploader :hat_sole,   :HatSoleUploader
  mount_uploader :hat_inner,  :HatInnerUploader
  mount_uploader :hat_one,    :HatOneUploader
  mount_uploader :hat_two,    :HatTwoUploader
end
