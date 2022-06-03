class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    if @post.save
      redirect_to controller: :posts, action: :index
    else
      render "new"
    end
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
