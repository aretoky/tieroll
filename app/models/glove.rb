class Glove < ApplicationRecord
  validates :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :glove_name, :glove_code, :glove_front, predence: true
  belongs_to staff_member

  mount_uploader :glove_front,  GloveFrontUploader
  mount_uploader :glove_back,   GloveBackUploader
  mount_uploader :glove_inner,  GloveInnerUploader
  mount_uploader :glove_wrist,  GloveWristUploader
  mount_uploader :glove_one,    GloveOneUploader
  mount_uploader :glove_two,    GloveTwoUploader
  mount_uploader :glove_three,  GloveThreeUploader
end
