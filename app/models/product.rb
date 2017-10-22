class Product < ApplicationRecord
  belongs_to :staff_member, :photo, :color, :pattern, :season, :scene, :size, dependent: :destroy
  validates :staff_member, :photo, :color, :pattern, :season, :scene, :size, :product_name, :description, :price, presence: true

  validates :staff_member, uniqueness: true
end
