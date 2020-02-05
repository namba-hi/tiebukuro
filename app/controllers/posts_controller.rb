class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  def index
    @post = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.save
      redirect_to root_path
    else 
      render :new
    end
    #tag_list = params[:post][:tag_name].split(",")
    #@post.save_posts(tag_list)
  end

  def show
    @post = Post.find(params[:id])
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

  def set_tag
    @tags = Tag.find(params[:tag_id])
  end
end
