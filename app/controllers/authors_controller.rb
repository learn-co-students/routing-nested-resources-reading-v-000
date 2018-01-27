class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id])
  end

#  def posts_index
#      @author = Author.find_by(params[:id])

#      @post = @author.posts
#      render template: 'posts/index'
#  end

#  def post
#    @author = Author.find_by(params[:id])
#    @post = Post.find_by(params[:post_id])
#    render template: 'posts/show'
#  end

end
