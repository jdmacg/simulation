Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users' => 'users#show'

  # get '/incentives' => 'incentives#index' TODO: Do we need this in the db?

  resources :trade_requests
  get "accept/:id" => "trade_requests#accept", :as => "accept"

  resources :teams
  # get '/teams' => 'teams#index'

  resources :properties
  get "develop/:id" => "users#develop", :as => "develop"

  resources :incentives

  namespace :admin do
    resources :properties
  end

  root "welcome#home"



end
