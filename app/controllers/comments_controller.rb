class CommentsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :destroy]

  def create
    @product = Product.find(params[:product_id])
    @comment = @product.comments.create(comment_params)
    @comment.user_id = current_user.id if current_user
    @comment.save
    redirect_to product_path(@product)

  end

  def destroy
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
    @comment.destroy
    redirect_to product_path(@product)
  end

  private
  def comment_params
    params.require(:comment).permit( :response)
  end
end