Rails.application.routes.draw do
  #root 'dashboard#index'

  resources :metro_lines
  resources :stations
  resources :blocks
  resources :users
  resources :groups
  resources :environments
  resources :roles
  resources :views
  resources :applications
  resources :labels
  resources :categories
  resources :workflows
  resources :walls
  
  
  # New authentication routes
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create', as: 'sessions'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  get '/signup', to: 'users#new'
  resources :users, only: [:create, :edit, :update]

  # Set root path to login page
  root 'sessions#new'

  # Dashboard route
  get '/dashboard', to: 'dashboard#index', as: 'dashboard'
end
