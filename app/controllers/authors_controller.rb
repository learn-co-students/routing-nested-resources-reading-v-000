class AuthorsController < ApplicationController

  def show
    @author = Author.find(params[:id]) #we only have the resources linked to the show actions
  end

end
