class Muffler < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :name, :code, :muffler_front, presence: true
  belongs_to :staff_member
  has_many :machandises


  mount_uploader :muffler_front,  MufflerFrontUploader
  mount_uploader :muffler_back,   MufflerBackUploader
  mount_uploader :muffler_fringe, MufflerFringeUploader
  mount_uploader :muffler_one,    MufflerOneUploader
  mount_uploader :muffler_two,    MufflerTwoUploader
  mount_uploader :muffler_three,  MufflerThreeUploader
end
