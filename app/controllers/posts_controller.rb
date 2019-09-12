class PostsController < ApplicationController

  def index
    #@posts = Post.all
    #update our posts_controller to handle the nested resource we just set up. 
    if params[:author_id]
      @posts = Author.find(params[:author_id]).posts
    else
      @posts = Post.all
    end
  end

=begin
    
  <h1>Believe It Or Not I'm Blogging On Air</h1>
<% @posts.each do |post| %>
  <div>
    <h2><%= post.title %></h2>
    
     <h3>by: <%= link_to post.author.name, author_posts_path(post.author) %></h3>
    <p><%= post.description %></p>
  </div>
<% end %>
=end

  def show
    @post = Post.find(params[:id])
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
