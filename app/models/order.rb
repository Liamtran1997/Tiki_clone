class Order < ApplicationRecord
  belongs_to :cart

  validate :product_present
  validate :order_present




  private

  def product_present
    if product.nil?
      errors.add(:product, "Isn't valid or isn't active.")
    end
  end

  def order_present
    if order.nil?
      errors.add(:order, "is not a valid order.")
    end
  end

end
