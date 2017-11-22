class Vest < ApplicationRecord
  validates :staff_member, :name, :code, :v_front, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member
  has_many :machandises


  mount_uploader :v_front,            VFrontUploader
  mount_uploader :v_back,             VBackUploader
  mount_uploader :inner_v,            InnerVUploader
  mount_uploader :v_buckle,           VBuckleUploader
  mount_uploader :v_pocket,           VPocketUploader
  mount_uploader :v_breast_pocket,    VBreastPocketUploader
  mount_uploader :v_other,            VOtherUploader
end
