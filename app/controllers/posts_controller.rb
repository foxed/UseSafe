class PostsController < ApplicationController
  before_filter :ensure_user_is_admin, only: [:create, :new, :edit, :update, :destroy]

  def index
    @posts = Post.all.includes(:user)
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.recent.includes(:user, :post)
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.build(post_params)
    post.save

    redirect_to posts_path
  end

  def edit
    @post = find_post
  end

  def update
    @post = find_post
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def destroy
    @post = find_post
    @post.destroy

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :description)
  end

  def find_post
    current_user.posts.find(params[:id])
  end
end
