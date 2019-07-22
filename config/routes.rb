Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  Rails.application.routes.draw do
 
    resources :authors, only: [:show] do
      # nested resource for posts
      resources :posts, only: [:show, :index]
    end
   
    resources :posts, only: [:index, :show, :new, :create, :edit, :update]
   
    root 'posts#index'
  end

  

end
