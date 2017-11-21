class Gant < ApplicationRecord
  validates :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :name, :code, :glove_front, presence: true
  belongs_to :staff_member
  has_many :main_products

  mount_uploader :glove_front,  GloveFrontUploader
  mount_uploader :glove_back,   GloveBackUploader
  mount_uploader :glove_inner,  GloveInnerUploader
  mount_uploader :glove_wrist,  GloveWristUploader
  mount_uploader :glove_one,    GloveOneUploader
  mount_uploader :glove_two,    GloveTwoUploader
  mount_uploader :glove_three,  GloveThreeUploader
end
