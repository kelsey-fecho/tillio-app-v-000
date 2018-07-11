Rails.application.routes.draw do
  root 'gardens#index'

  get '/plants/trees' => 'plants#trees'
  get '/plants/perennials' => 'plants#perennials'

  resources :users, only: [:show] do
    resources :gardens
  end

  resources :gardens do
    resources :clippings
  end

  resources :plants

  post '/clippings' => 'clippings#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new', as: "new_user"
  post '/signup' => 'users#create', as: "users"

  get '/auth/google_oauth2/callback' => 'sessions#create'

end
