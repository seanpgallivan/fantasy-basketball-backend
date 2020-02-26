Rails.application.routes.draw do
  resources :leagues
  resources :teams
  resources :users, only: [:create]
  resources :auth, only: [:show, :create]
end