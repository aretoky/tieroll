class Vest < ApplicationRecord
  validates :staff_member, presence: true
  belongs_to :staff_member
  

  mount_uploader :v_front,    VFrontUploader
  mount_uploader :v_back,     VBackUploader
  mount_uploader :inner_v,    InnerVUploader
  mount_uploader :v_buckle,   VBuckleUploader
  mount_uploader :v_other,    VOtherUploader
end
