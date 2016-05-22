Rails.application.routes.draw do

  resources :authors, only: [:show] do
    resources :posts, only: [:index, :show]
  end

  resources :posts, only: [:new, :create, :show, :index, :edit, :update ]

  root 'posts#index'

#  get 'authors/:id/posts', to: 'authors#posts_index'
#  get 'authors/:id/posts/:id',  to: 'authors#post'
end
