Rails.application.routes.draw do

  resources :authors, only: [:show] do

  resources :posts, only: [:show, :index]
end

root 'posts#index'


 get 'authors/:id/posts', to: 'authors#posts_index'
 get 'authors/:id/posts/:post_id', to: 'authors#post'
end
