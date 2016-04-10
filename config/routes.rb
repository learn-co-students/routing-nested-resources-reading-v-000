Rails.application.routes.draw do
  resources :authors, only: [:show]
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
  root 'posts#index'

  resources :authors, only: [:show] do
    # get 'authors/:id/posts', to: 'authors#posts_index'
    # get 'authors/:id/posts/:post_id', to: 'authors#post'
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end


end
