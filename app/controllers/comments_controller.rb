class CommentsController < ApplicationController
  before_action :set_comment, only: %i[like unlike]
  before_action :authenticate_user!, only: [:create, :destroy, :like, :unlike]

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

  def like
    @comment.like_by(current_user)
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
      format.json { render layout:false }
    end
  end

  def unlike
    @comment.unliked_by(current_user)
    respond_to do |format|
      format.html { redirect_back fallback_location: root_path }
      format.json { render layout:false }
    end
  end

  private
  def set_comment
    @product = Product.find(params[:product_id])
    @comment = @product.comments.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit( :response)
  end
end