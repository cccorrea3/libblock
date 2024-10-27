Rails.application.routes.draw do
  root 'dashboard#index'

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
end