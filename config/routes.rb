Rails.application.routes.draw do

  resources :authors, only: [:show] do
    # nested resource routes
    resources :posts, only: [:show, :index]
  end

    resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  # BRUTE FORCE WAY:
  # get 'authors/:id/posts', to: 'authors#posts_index'
  # get 'authors/:id/posts/:post_id', to: 'authors#post'


end
