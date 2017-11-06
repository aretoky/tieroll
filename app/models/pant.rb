class Pant < ApplicationRecord
  validates :staff_member, presence: true
  belongs_to :staff_member


  mount_uploader :p_front,        PFrontUploader
  mount_uploader :p_back,         PBackUploader
  mount_uploader :p_side,         PSideUploader
  mount_uploader :p_inner,        PInnerUploader
  mount_uploader :p_hem,          PHemUploader
  mount_uploader :p_front_pocket, PFrontPocketUploader
  mount_uploader :p_back_pocket,  PBackPocketUploader
  mount_uploader :p_other,        POtherUploader
  mount_uploader :belt_roop,      BeltRoopUploader
end
