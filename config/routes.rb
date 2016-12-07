Rails.application.routes.draw do
  #match ':controller(/:action(/:id))(.:format)'

  match '/login_attempt', to: 'sessions#login_attempt', via: :all

  post '/signup', to:  'users#create'

  get '/signup', to:  'users#new'

  match '/login', to:  'sessions#login', via: :all

  match '/logout', to:  'sessions#logout', via: :all

  match '/home', to:  'sessions#home', via: :all

  match '/profile', to:  'sessions#profile', via: :all

  match '/setting', to:  'sessions#setting', via: :all



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
