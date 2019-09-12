Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  #We know we can build out a route with dynamic segments, so our first instinct might be to just define these in routes.rb like this:

  #get 'authors/:id/posts'
  #get 'authors/:id/posts/:post_id'

  #Gotta tell those routes explicitly which controller actions will handle them. Okay, let's make it look more like this:

  #get 'authors/:id/posts', to: 'authors#posts_index'
  #get 'authors/:id/posts/:post_id', to: 'authors#post'

  #Nested resources give us a way to document that parent/child relationship in our routes and, ultimately, our URLs.

  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end
 
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
 
  root 'posts#index'
end
