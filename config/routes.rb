Rails.application.routes.draw do

  # Instead of this...
  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/post/:post_id', to: 'authors#post'

  # Do this...
  resources :authors, only: [:show] do
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
