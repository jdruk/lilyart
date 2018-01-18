Rails.application.routes.draw do
  get 'photo_gallery/create'

  get 'photo_gallery/destroy'

  get 'dashboard_admin/index'

  resources :tags
  resources :order_items

  resources :items do
    resources :photo_gallery, :only => [:create, :destroy]
  end
  resources :categories do
    resources :sub_categories
  end
  resources :orders
  resources :addresses
  devise_for :users
  get 'page/index'
  root "page#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
