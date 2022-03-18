class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_search, :set_categories, :set_products

  include CurrentCart
  before_action :set_cart


  private

  def set_search
    @search = Product.search(params[:q])
  end

  def set_products
    @products = Product.all
  end

  def set_categories
    @categories = Category.all
  end
end
