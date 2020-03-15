class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show, :search]

  def index
    @post = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
    @tag = Tag.includes(:posts)
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
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
    @like= Like.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to root_path
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end

  def search
    @post = Post.search(params[:keyword]).order("created_at DESC").page(params[:page]).per(5)
    @tag = Tag.includes(:posts)
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :tag_ids).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

  def set_tag
    @tag = Tag.find(params[:tag_id])
  end
end
