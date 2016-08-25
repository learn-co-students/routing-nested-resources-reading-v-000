Rails.application.routes.draw do

  resources :authors do
  	resources :posts do
  		resources :comments
  	end
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'


end
