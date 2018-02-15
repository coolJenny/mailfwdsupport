Rails.application.routes.draw do
  resources :admins
  resources :homes
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # root 'registrations#new'
  root 'home#index'
  get 'contact_us', to: 'home#contact'
  post 'contact_us', to: 'home#create'
  get 'home', to: 'home#index', as: 'admin1'
end
