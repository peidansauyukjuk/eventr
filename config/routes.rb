Rails.application.routes.draw do
  resources :lists
  resources :items, only: [:new, :create]
  resources :events
  resources :users
  get '/signup', to: 'users#new'
  root 'users#index'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  post '/lists/:id/', to: 'users#add_user_to_list'

end
