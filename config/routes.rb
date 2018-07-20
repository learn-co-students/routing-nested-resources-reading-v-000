Rails.application.routes.draw do
  resources :authors, only: [:show] do
  # nested resource for posts
  # has_many :posts and a post belongs_to :author
  #Since a post can logically be considered a child object to an author
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
  
end
