Rails.application.routes.draw do
  resources :lists
  resources :items, only: [:new, :create]
  resources :events
  resources :users
  get '/signup', to: 'users#new'

end
