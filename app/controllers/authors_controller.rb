class AuthorsController < ApplicationController

  def show
    find_author
  end

  def find_author
    @author = Author.find(params[:id])
  end
end
