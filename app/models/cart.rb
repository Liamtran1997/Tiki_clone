class Cart < ApplicationRecord

  # User to Cart
  belongs_to :user

  # Cart to Product to Category
  has_many :products
  has_many :categories , through: :products

  has_one :order
end
