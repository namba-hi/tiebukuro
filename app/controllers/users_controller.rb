class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @post = user.posts.includes(:user).order("created_at DESC").page(params[:page]).per(5)
    @tag = Tag.includes(:posts)
  end
end
