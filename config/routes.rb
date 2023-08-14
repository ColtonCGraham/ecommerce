Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config

  ActiveAdmin.routes(self)
  resources :order_items
  resources :orders
  resources :provinces
  resources :sales
  resources :accounts
  resources :products
  resources :categories

  get "sign_up", to: "registrations#new"

  post "sign_up", to: "registrations#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
