Rails.application.routes.draw do
  resources :tags
  resources :order_items
  resources :items
  resources :sub_categories
  resources :categories
  resources :orders
  resources :addresses
  devise_for :users
  get 'page/index'
  root "page#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
