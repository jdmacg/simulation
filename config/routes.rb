Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users' => 'users#show'

  get '/teams' => 'teams#index'
  # get '/incentives' => 'incentives#index' TODO: Do we need this in the db?

  resources :trade_requests

  resources :teams

  get '/trading' => 'trade_requests#home'

  resources :properties

  root "welcome#home"



end
