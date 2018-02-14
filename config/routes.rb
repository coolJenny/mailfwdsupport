Rails.application.routes.draw do
  resources :admins
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # root 'registrations#new'
  root 'home#index'
  get 'contact_us', to: 'home#contact'
  # post 'contact-us', to: 'home#create'
end
