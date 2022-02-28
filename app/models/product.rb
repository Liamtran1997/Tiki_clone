class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON

  belongs_to :category
  has_many :carts


  validates :name, :price , :unit, :category_id, presence: true
end
