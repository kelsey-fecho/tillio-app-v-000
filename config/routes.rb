Rails.application.routes.draw do
  root "plants#index"
  resources :users, :plants

  get '/signin' => "sessions#new"
end
