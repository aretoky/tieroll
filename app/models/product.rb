class Product < ApplicationRecord
  belongs_to :staff_member, dependent: :destroy

  belongs_to :photo, dependent: :destroy
  accepts_nested_attributes_for :photo

  # validates :staff_member, :photo, :color, :pattern, :season, :scene, :size, :product_name, :description, :price, presence: true
  validates :staff_member, :color, :pattern, :season, :scene, :size, :product_name, :description, :price, presence: true

  validates :staff_member, uniqueness: true
end
