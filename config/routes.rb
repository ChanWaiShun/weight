Rails.application.routes.draw do
  resources :about_us
  resources :information
  resources :information
  resources :sponsors
  resources :profiles
  resources :friends
  resources :comments
  resources :ideas
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
