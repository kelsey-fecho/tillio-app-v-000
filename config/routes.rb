Rails.application.routes.draw do
  root 'gardens#index'

  get '/plants/trees' => 'plants#trees'
  get '/plants/perennials' => 'plants#perennials'

  resources :users, only: [:show] do
    resources :gardens
  end

  resources :gardens do
    resources :clippings, only: [:update]
  end
  get '/plants/kinds/:kind' => "plants#findKinds", as: 'plant_kinds'
  resources :plants

  post '/clippings' => 'clippings#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new', as: "new_user"
  post '/signup' => 'users#create', as: "users"

  get '/auth/google_oauth2/callback' => 'sessions#create'

  get '/plants/:id/gardens' => 'gardens#show_specific', as: 'plant_gardens'
end
