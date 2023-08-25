# frozen_string_literal: true

Rails.application.routes.draw do
  get 'cart',  to: 'cart#show'
  post 'cart/add'
  post 'cart/remove'
  resources :abouts
  resources :contacts
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  resources :order_items
  resources :orders
  resources :provinces
  resources :sales
  resources :accounts
  resources :products
  resources :categories

  get 'sign_up', to: 'registrations#new'

  post 'sign_up', to: 'registrations#create'

  post 'products', to: 'products#cart'

  delete 'logout', to: 'sessions#destroy'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  get 'checkout', to: 'checkout#new'
  post 'checkout', to: 'checkout#create'

  get 'checkout', to: 'checkout#new'
  get 'searchproducts', to: 'products#search'
  root 'products#index'
end
