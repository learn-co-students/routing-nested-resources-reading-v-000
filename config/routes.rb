Rails.application.routes.draw do

  resources :authors, only: [:show] do
    resources :posts [:index, :show]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'
end
