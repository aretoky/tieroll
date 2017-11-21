class CuffLink < ApplicationRecord
  validates :staff_member, :description, :raw_materials, :price, :size, :color, :pattern, :season, :scene, :name, :code, :cuff_link_one, presence: true
  belongs_to :staff_member
  has_many :main_products


  mount_uploader :cuff_link_one,    CuffLinkOneUploader
  mount_uploader :cuff_link_two,    CuffLinkTwoUploader
  mount_uploader :cuff_link_three,  CuffLinkThreeUploader
  mount_uploader :cuff_link_four,   CuffLinkFourUploader
  mount_uploader :cuff_link_five,   CuffLinkFiveUploader
  mount_uploader :cuff_link_six,    CuffLinkSixUploader
  mount_uploader :cuff_link_seven,  CuffLinkSevenUploader
end
