Rails.application.routes.draw do
  root 'plants#index'
  resources :users, :plants

  get '/signin' => 'sessions#new'
  post '/signin' => 'session#create'
end
