
Rails.application.routes.draw do
 
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end
 
  resources :posts do
    resources :comments
  end
    
  resources :posts, only: [:index, :show, :new, :create, :edit, :update]
 
  root 'posts#index'
end