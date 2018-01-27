Rails.application.routes.draw do

  resources :authors, only: [:show] do 
    #nested routes
    resources :posts, only: [:show,:index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
