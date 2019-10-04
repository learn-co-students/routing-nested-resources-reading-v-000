Rails.application.routes.draw do
<<<<<<< HEAD

  resources :authors, only: [:show] do
    resources :posts, only: [:show, :index]
  end
=======
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors, only: [:show]
>>>>>>> c9ec551ad0f6cb3e21a603fe8ca2bdc8d422469d

  resources :posts, only: [:index, :show, :new, :create, :edit, :update]

  root 'posts#index'

end
