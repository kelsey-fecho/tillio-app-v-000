Rails.application.routes.draw do
  root 'plants#index'
  resources :users, :plants


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/auth/google_oauth2/callback' => 'sessions#create'
end
