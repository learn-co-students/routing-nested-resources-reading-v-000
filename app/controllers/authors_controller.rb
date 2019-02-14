class AuthorsController < ApplicationController

  def posts_index
    @author = Author.find(params[:id])
  end

  def posts
    @author = Author.find(params[:id])
    @post = Post.find(params[:post_id])
    render template: posts/show
  end

end
