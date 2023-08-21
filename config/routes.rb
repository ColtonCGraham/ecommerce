# frozen_string_literal: true

Rails.application.routes.draw do
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

  delete 'logout', to: 'sessions#destroy'

  get 'sign_in', to: 'sessions#new'
  post 'sign_in', to: 'sessions#create'

  get 'checkout', to: 'checkout#new'

  root 'products#index'
end
