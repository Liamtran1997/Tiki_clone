class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON

  belongs_to :category
  belongs_to :cart


  validates :name, :price , :unit, :category_id, presence: true
end
