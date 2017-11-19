class PocketChief < ApplicationRecord
  validates :staff_member, :name, :code, :chief_one, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member


  mount_uploader :chief_one,    ChiefOneUploader
  mount_uploader :chief_two,    ChiefTwoUploader
  mount_uploader :chief_three,  ChiefThreeUploader
end
