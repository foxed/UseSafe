UseSafe::Application.routes.draw do
  devise_for :users
  root to: 'homes#index'

  resources :resources

  resource :search, only: [:show, :new]
end
