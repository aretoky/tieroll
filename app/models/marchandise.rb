class Marchandise < ApplicationRecord
  validates :staff_member, :product_face, :code, :season, :scene, :description, :price, :shurt, :pant, :sock, :shoe, presence: true


  belongs_to :staff_member
  belongs_to :belt
  belongs_to :jacket
  belongs_to :pant
  belongs_to :pocket_chief
  belongs_to :shoe
  belongs_to :shurt
  belongs_to :tie_pin
  belongs_to :sock
  belongs_to :tie_neck
  belongs_to :vest
  belongs_to :coat
  belongs_to :muffler
  belongs_to :ear_muffler
  belongs_to :gant
  belongs_to :knit
  belongs_to :cuff_link
  belongs_to :lapel_pin
  belongs_to :hat
  belongs_to :other

  mount_uploader :product_face, ProductFaceUploader

  # PRODUCT_SCENE = {ビジネス: 'Business', ビジカジ: 'Office_casual', 休日: 'Holiday', デート: 'Date', 'パーティー/お呼ばれ': 'Party' 結婚式: 'Wedding'}
end
