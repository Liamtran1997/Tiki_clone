class Product < ApplicationRecord

  before_destroy :not_referenced
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  is_impressionable


  belongs_to :user, optional: true
  belongs_to :category

  has_many :line_items
  has_many :carts , through: :line_items


  validates :name, :price , :unit, :category_id, presence: true


  def not_referenced
    unless line_items.empty?
      errors.add(:base, "Line Items Present")
      throw :abort
    end
  end

end
