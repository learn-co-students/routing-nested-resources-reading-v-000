Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :authors, only: [:show]

  # https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-10-routes-and-resources/routing-and-nested-resources
  # added code
  resources :authors, only: [:show] do
    # nested resource for posts
    resources :posts, only: [:show, :index]
  end

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
