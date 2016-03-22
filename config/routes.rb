Rails.application.routes.draw do

  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  resources :posts do
    resources :comments
  end
  
  root 'posts#index'
end
