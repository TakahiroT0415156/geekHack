class PostsController < ApplicationController
  def top
    image = ["kawauso.jpeg", "panda.jpeg", "pengin.jpeg", "pengin2.jpeg", "suzume.jpeg", "tanuki.jpeg"]
    @image = image.sample
    random = Post.all
    @posts = random.shuffle
  end

  def index
    posts = Post.all
    @posts = posts.reverse
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
