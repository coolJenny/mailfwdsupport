Rails.application.routes.draw do
  resources :homes
  devise_for :users
  # root 'users#index'

  root to: 'homes#index'
end
