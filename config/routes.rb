UseSafe::Application.routes.draw do
  root 'homes#index'

  resources :resources

  resource :search, only: [:show, :new]
end
