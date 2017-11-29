class Marchandise < ApplicationRecord
  validates :staff_member, :product_face, :code, :season, :product_scene, :description, :price, :shurt, :pant, :sock, :shoe, presence: true


  belongs_to :staff_member
  belongs_to :belt,         optional: true
  belongs_to :jacket,       optional: true
  belongs_to :pant
  belongs_to :pocket_chief, optional: true
  belongs_to :shoe
  belongs_to :shurt
  belongs_to :tie_pin,      optional: true
  belongs_to :sock
  belongs_to :tie_neck,     optional: true
  belongs_to :vest,         optional: true
  belongs_to :coat,         optional: true
  belongs_to :muffler,      optional: true
  belongs_to :ear_muffler,  optional: true
  belongs_to :gant,         optional: true
  belongs_to :knit,         optional: true
  belongs_to :cuff_link,    optional: true
  belongs_to :lapel_pin,    optional: true
  belongs_to :hat,          optional: true
  belongs_to :other,        optional: true

  mount_uploader :product_face, ProductFaceUploader
  # PRODUCT_SCENE = {'ビジネス': 'Business', 'ビジカジ': 'Office_casual', '休日': 'Holiday', 'デート': 'Date', 'パーティー/お呼ばれ': 'Party' '結婚式': 'Wedding'}

end
