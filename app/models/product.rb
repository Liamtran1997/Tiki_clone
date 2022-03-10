class Product < ApplicationRecord
  # Like + Heart Rating
  acts_as_votable

  before_destroy :not_referenced
  mount_uploader :image, ImageUploader
  serialize :image, JSON
  is_impressionable


  belongs_to :category

  has_many :line_items
  has_many :carts , through: :line_items


  validates :name, :price , :unit, :category_id, presence: true


  private
  def not_referenced
    unless line_items.empty?
      errors.add(:base, "Line Items Present")
      throw :abort
    end
  end

end
