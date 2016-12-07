Rails.application.routes.draw do
  resources :property_types
  resources :properties
  resources :developments
  resources :trade_requests
  resources :teams
  get 'sessions/new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  root to: 'teams#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
