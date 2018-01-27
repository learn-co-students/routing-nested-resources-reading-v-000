Rails.application.routes.draw do

  resources :authors, only: [:show] do
    #nested resource gives authors access to the posts index and show
    resources :posts, only: [:show, :index]
    #add routes to posts controller
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  #custom route to get all posts of an author
    #but, deprecated in favor of nested route
    #get 'authors/:id/posts', to: 'authors#posts_index'

  #custom route to get specific post, from all posts of an author
    #but, deprecated in favor of nested route
    #get '/authors/:id/posts/:post_id', to: 'authors#post'
end
