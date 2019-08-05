Rails.application.routes.draw do
  resources :authors, only: [:show] do
  resources :posts, only: [:index, :show]
  end

resources :posts, only: [:index, :show, :update, :edit, :create, :new]
  root 'posts#index'

end
