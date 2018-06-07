Rails.application.routes.draw do
  root 'plants#index'
  resources :users, :plants

  get '/login' => 'sessions#new'
  post '/login' => 'session#create'
  post '/logout' => 'session#destroy'
end
