Rails.application.routes.draw do

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'
  get '/users' => 'users#show'

  get '/properties' => 'properties#index'
  get '/teams' => 'teams#index'
  # get '/incentives' => 'incentives#index' TODO: Do we need this in the db?
  get '/trades' => 'trade_requests#index'

  root "welcome#home"

end
