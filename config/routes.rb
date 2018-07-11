Rails.application.routes.draw do
  root 'gardens#index'

  get '/plants/trees' => 'plants#trees'
  get '/plants/perennials' => 'plants#perennials'

  resources :users, only: [:show, :new, :create] do
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

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/auth/google_oauth2/callback' => 'sessions#create'

end
