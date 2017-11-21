class MainProduct < ApplicationRecord
  validates :staff_member, :product_face, :code, :season, :scene, :description, :price, :shurt, :pant, :sock, :shoe, presense: true

  belongs_to :staff_member
  has_many :belts
  has_many :jackets
  has_many :pants
  has_many :pocket_chiefs
  has_many :shoes
  has_many :shurts
  has_many :tie_pins
  has_many :socks
  has_many :tie_necks
  has_many :vests
  has_many :coats
  has_many :mufflers
  has_many :ear_mufflers
  has_many :gants
  has_many :knits
  has_many :cuff_links
  has_many :lapel_pin
  has_many :hats
  has_many :others

  mount_uploader :product_face, ProductFaceUploader

  PRODUCT_SCENE = {ビジネス: 'Business', ビジカジ: 'Office_casual', 休日: 'Holiday', デート: 'Date', 'パーティー/お呼ばれ': 'Party' 結婚式: 'Wedding'}
end
