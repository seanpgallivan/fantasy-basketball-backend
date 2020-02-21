Rails.application.routes.draw do
  resources :users, only: [:create]
  resources :auth, only: [:show, :create]
end