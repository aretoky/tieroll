class Jacket < ApplicationRecord
  validates :staff_member, :name, :code, :j_front, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member
  has_many :main_products

  # cache確認時の簡易的な検証
  # validates :j_front, :jacket_name, presence: true


  mount_uploader :j_front,          JFrontUploader
  mount_uploader :j_back,           JBackUploader
  mount_uploader :open_front,       OpenFrontUploader
  mount_uploader :closed_front,     ClosedFrontUploader
  mount_uploader :lapel,            LapelUploader
  mount_uploader :j_bents,          JBentsUploader
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
