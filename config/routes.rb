Rails.application.routes.draw do
  resources :leagues
  resources :teams
  resources :users
  resources :auth, only: [:show, :create]
end