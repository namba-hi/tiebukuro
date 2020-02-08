class TagsController < ApplicationController
  def show
    @tag = Tag.includes(:posts)
    tag = Tag.find(params[:id])
    @tag_name = tag.name
    @post = tag.posts.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end
end
