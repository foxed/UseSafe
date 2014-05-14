UseSafe::Application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  resource :homes, only: [:show]

  resources :resources
  resources :readings, only: [:show, :index]

  resource :search, only: [:show, :new]

  resources :posts do
    resources :comments, only: [:create]
  end

  resources :comments, only: [:destroy]
end
