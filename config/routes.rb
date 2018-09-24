Rails.application.routes.draw do

  resources :authors, only: [:show]
  #nested resource for posts

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
