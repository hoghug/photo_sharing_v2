PhotoShare::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'users#destroy', as: 'logout'

  resources :users
  resources :sessions

  root to: 'users#index'
end
