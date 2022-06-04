class PostsController < ApplicationController
  def top
    @posts = Post.all
  end

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to action: :index
  end

  private
  def post_params
    params.require(:post).permit(:body, :title, :word, :name)
  end
end
