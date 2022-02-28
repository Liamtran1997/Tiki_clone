class Cart < ApplicationRecord

  # User to Cart
  belongs_to :user

  # Cart to Product to Category
  belongs_to :product

  # Cart to Oder
  has_one :order
end
