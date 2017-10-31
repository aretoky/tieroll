class Jacket < ApplicationRecord
  validates :staff_member, presence: true


  mount_uploader :j_front,          JFrontUploader
  mount_uploader :j_back,           JBackUploader
  mount_uploader :open_front,       OpenFrontUploader
  mount_uploader :closed_front,     ClosedFrontUploader
  mount_uploader :lapel,            LapelUploader
  mount_uploader :j_cuff,           JCuffUploader
  mount_uploader :j_button,         JButtonUploader
  mount_uploader :j_inner,          JInnerUploader
  mount_uploader :j_inner_r,        JInnerRUploader
  mount_uploader :j_inner_l,        JInnerLUploader
  mount_uploader :j_pocket,         JPocketUploader
  mount_uploader :j_breast_pocket,  JBreastPocketUploader
  mount_uploader :j_other_one,      JOtherOneUploader
  mount_uploader :j_other_two,      JOtherTwoUploader
end
