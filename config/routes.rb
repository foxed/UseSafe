UseSafe::Application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  resources :resources
  resources :readings, only: [:show, :index]

  resource :search, only: [:show, :new]

  resources :posts, only: [:show, :index, :new, :create] do 
    resources :comments, only: [:create]
  end
end
