Rails.application.routes.draw do
  resources :keywordlists
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
  get 'dashboard', to: 'admins#main_admin'
  get 'dashboard/edit', to: 'admins#edit_admin'
end
