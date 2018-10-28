Rails.application.routes.draw do

  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/posts/:posts_id', to: 'authors#post'

  root 'posts#index'
end
