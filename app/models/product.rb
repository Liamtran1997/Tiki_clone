class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON

  belongs_to :category
  belongs_to :cart
end
