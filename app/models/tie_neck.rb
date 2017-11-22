class TieNeck <ApplicationRecord
  validates :staff_member, :name, :code, :tie_one, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, presence: true
  belongs_to :staff_member
  has_many :machandises
  

  mount_uploader :tie_one,     TieOneUploader
  mount_uploader :tie_two,     TieTwoUploader
  mount_uploader :tie_three,   TieThreeUploader
  mount_uploader :tie_four,    TieFourUploader
end
