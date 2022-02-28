class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  # User to Cart to Order
  has_many :cart
  # has_one :order, through: :cart

  # User to Cart to Product
  has_many :products, through: :cart
end
