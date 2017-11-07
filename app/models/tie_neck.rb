class TieNeck <ApplicationRecord
  validates :staff_member, :tie_one, presence: true
  belongs_to :staff_member


  mount_uploader :tie_one,     TieOneUploader
  mount_uploader :tie_two,     TieTwoUploader
  mount_uploader :tie_three,   TieThreeUploader
  mount_uploader :tie_four,    TieFourUploader
end
