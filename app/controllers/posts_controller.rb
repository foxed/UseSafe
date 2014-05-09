class PostsController < ApplicationController
  before_filter :ensure_user_is_admin, only: [:create, :new]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.build(post_params)
    post.save

    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :url, :description)
  end
end
