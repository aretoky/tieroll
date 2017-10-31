class Tie < ApplicationRecord
  validates :staff_member, presence: true

  mount_uploader :tie_one,     TieOneUploader
  mount_uploader :tie_two,     TieTwoUploader
  mount_uploader :tie_three,   TieThreeUploader
end
