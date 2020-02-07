Rails.application.routes.draw do
  resources :books

  resources :authors

  root to: 'users#index'
  resources :users, only: :index
end
