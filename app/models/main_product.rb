class MainProduct < ApplicationRecord
  validates :staff_member, :product_face, :name, :code, :season, :scene, :shurt, :pant, :sock, :shoe, presense: true

  mount_uploader :product_face, ProductFaceUploader
end
