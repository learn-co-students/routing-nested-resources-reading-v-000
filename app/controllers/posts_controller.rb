class PostsController < ApplicationController

  def index
    #with nested resource, update with if/else to see if
    if params[:author_id]
      #need to limit index to specific author
      @posts = Author.find(params[:author_id]).posts
    else
      #need to show all posts, otherwise
      @posts = Post.all
    end
  end

  def show
    #with nested resource, update with if/else to see if
    if params[:author_id]
      #need to show specific post, based on author
      @post = Author.find(params[:author_id]).posts.find(params[:id])
    else
      #need to show post, based on post_id only
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
