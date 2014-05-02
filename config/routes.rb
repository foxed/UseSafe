UseSafe::Application.routes.draw do
  root 'homes#index'

  resources :resources
end
