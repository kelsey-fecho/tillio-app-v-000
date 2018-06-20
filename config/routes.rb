Rails.application.routes.draw do
  root 'plants#index'
  resources :users, only: [:show, :new, :create] do
    resources :clippings, only: [:index, :create, :show, :new]
  end

  resources :plants


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  get '/auth/google_oauth2/callback' => 'sessions#create'

end
