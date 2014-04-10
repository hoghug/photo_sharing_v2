PhotoShare::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'users#destroy', as: 'logout'

  resources :users do
    resources :uploads do
      resources :favorites
      resources :tags
    end
  end

  resources :sessions

  root to: 'users#index'
end
