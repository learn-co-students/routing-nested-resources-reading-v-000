class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def posts_index
    @author = Author.find(params[:id])
    @posts = @author.posts
    render template: 'posts/index'
  end

  def post
    @author = Author.find(params[:id])

    # Note that because ids are unique by table we can go directly to
    # Post.find — no need for @author.posts.find...
    @post = Post.find(params[:post_id])
    render template: 'posts/show'
  end
end
