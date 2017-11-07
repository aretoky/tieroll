class Shurt < ApplicationRecord
  validates :staff_member, :shurt_name, :shurt_code, :s_front, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene,presence: true
  belongs_to :staff_member


  mount_uploader :s_front,          SFrontUploader
  mount_uploader :s_back,           SBackUploader
  mount_uploader :s_cuff,           SCuffUploader
  mount_uploader :s_button,         SButtonUploader
  mount_uploader :s_breast_pocket,  SBreastPocketUploader
  mount_uploader :colar,            ColarUploader
  mount_uploader :s_other,          SOtherUploader
end
