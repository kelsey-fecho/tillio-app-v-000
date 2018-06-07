Rails.application.routes.draw do
  root 'plants#index'
  resources :users, :plants


  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'

  get 'auth/:provider/callback', to: 'sessions#google'
  get 'auth/failure', to: redirect('/')
end
