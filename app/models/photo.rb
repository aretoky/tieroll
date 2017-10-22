class Photo < ApplicationRecord
  validates :product_face, presence: true
  validates :product_id, presence: true, uniqueness: true
end
