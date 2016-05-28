class PostsController < ApplicationController

  def index
    if params[:author_id]
      @posts = Post.where(author_id: params[:author_id])
    else
      @posts = Post.all
    end
  end

  def show
    if params[:author_id]
      @post = Post.find_by(id: params[:id], author_id: params[:author_id])
    else
      @post = Post.find(params[:id])
    end
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save
    redirect_to post_path(@post)
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to post_path(@post)
  end

  def edit
    @post = Post.find(params[:id])
  end

private

  def post_params
    params.require(:post).permit(:title, :desription, :post_status, :author_id)
  end
end
