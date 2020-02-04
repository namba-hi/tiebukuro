class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    tag_list = params[:post][:tag_name].split(",")
    @blog.save_blogs(tag_list)
  end

  def edit
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :tag_ids).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
