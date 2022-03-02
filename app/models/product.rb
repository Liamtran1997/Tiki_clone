class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  is_impressionable

  belongs_to :category

  has_many :line_items
  has_many :carts , through: :line_items


  validates :name, :price , :unit, :category_id, presence: true

end
