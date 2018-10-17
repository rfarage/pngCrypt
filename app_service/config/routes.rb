Rails.application.routes.draw do
  root    'static_pages#home'
  get     '/help',      to: 'static_pages#help'
  get     '/about',     to: 'static_pages#about'
  get     '/contact',   to: 'static_pages#contact'
  get     '/stenApp',   to: 'static_pages#stenApp'
  get     '/signup',    to: 'users#new'
  post    '/signup',    to: 'users#create'
  get     '/login',     to: 'sessions#new'
  post    '/login',     to: 'sessions#create'
  delete  '/logout',    to: 'sessions#destroy'
  post    'users/:id',   to: 'users#reset'
  post    'users/:id',   to: 'users#demote'
  post    'users/:id',   to: 'users#promote'
  resources :users

  # Api
  post 'crypt/encrypt', to: 'crypt#encrypt'
  post 'crypt/decrypt', to: 'crypt#decrypt'
end