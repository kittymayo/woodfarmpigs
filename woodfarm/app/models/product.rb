class Product < ApplicationRecord
  # mount_uploader :photo, ImageUploader
  has_many :basket_items, dependent: :destroy

  validates :name, :description, :status, presence: true
  validates :description, length: { maximum: 1000, too_long: "%{count} characters is the maximum allowed" }
  validates :name, length: { maximum: 140, too_long: "%{count} characters is the maximum allowed" }
  validates :price_cents, numericality: { only_integer: true }, length: { maximum: 7 }
end
