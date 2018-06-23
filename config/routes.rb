Rails.application.routes.draw do

  # resources :authors, only: [:show]
  # get 'authors/:id/posts/:post_id', to: 'authors#post'
  # get 'authors/:id/posts', to: 'authors#post_index'

  resources :authors, only: [:show] do
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
