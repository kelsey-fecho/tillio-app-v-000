Rails.application.routes.draw do
  root 'plants#index'

  get '/plants/trees' => 'plants#trees'
  get '/plants/perennials' => 'plants#perennials'

  resources :users, only: [:show, :new, :create] do
    resources :clippings
  end

  resources :plants

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/auth/google_oauth2/callback' => 'sessions#create'

end
