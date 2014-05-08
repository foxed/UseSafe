UseSafe::Application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  resources :resources
  resources :readings, only: [:show, :index]

  resource :search, only: [:show, :new]
end
