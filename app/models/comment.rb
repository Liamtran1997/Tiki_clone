class Comment < ApplicationRecord

  belongs_to :user
  belongs_to :product


  validates :name, :response, presence: true
end
