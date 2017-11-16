class Coat < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :coat_name, :coat_code, :coat_front, presence: true
  belongs_to :staff_member


  mount_uploader :coat_front,         CoatFrontUploader
  mount_uploader :coat_back,          CoatBackUploader
  mount_uploader :coat_open_front,    CoatOpenFrontUploader
  mount_uploader :coat_closed_front,  CoatClosedFrontUploader
  mount_uploader :coat_inner,         CoatInnerUploader
  mount_uploader :coat_inner_r,       CoatInnerRUploader
  mount_uploader :coat_inner_l,       CoatInnerLUploader
  mount_uploader :coat_lapel,         CoatLapelUploader
  mount_uploader :coat_pocket,        CoatPocketUploader
  mount_uploader :coat_breast_pocket, CoatBreastPocketUploader
  mount_uploader :coat_bents,         CoatBentsUploader
  mount_uploader :coat_cuff,          CoatCuffUploader
  mount_uploader :coat_one,           CoatOneUploader
  mount_uploader :coat_two,           CoatTwoUploader
  mount_uploader :coat_three,         CoatThreeUploader
end
