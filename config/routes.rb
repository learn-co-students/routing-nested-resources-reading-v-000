Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show, :index] do
     # nested resource for posts
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

  #get 'authors/:id/posts', to: 'authors#posts_index'
  #shows all of an auhtor's posts

  #get 'authors/:id/posts/:post_id', to: 'authors#post'
  #shows a particular post of a particular author
end
