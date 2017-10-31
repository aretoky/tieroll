class Other < ApplicationRecord
  validates :staff_member, presence: true


  mount_uploader :other_one,        OtherOneUploader
  mount_uploader :other_two,        OtherTwoUploader
  mount_uploader :other_three,      OtherThreeUploader
  mount_uploader :other_four,       OtherFourUploader
  mount_uploader :other_five,       OtherFiveUploader
end
