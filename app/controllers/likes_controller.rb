class LikesController < ApplicationController
  before_action :set_post, only: [:create, :destroy]

  def create
    @post = Post.find(params[:post_id])
    @like = current_user.likes.create(post_id: params[:post_id], user_id: current_user.id)
    @like.save!
    @likes = Like.where(post_id: params[:post_id])

  end 

  def destroy
    @post = Post.find(params[:post_id])
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    @likes = Like.where(post_id: params[:post_id])
  end

  private
  def like_params
    params.permit(post_id: params[:post_id], user_id: current_user.id)
  end

  def set_post
    @post = Post.find(params[:post_id])
  end
    
end
