Rails.application.routes.draw do
  root 'pages#home'

  get 'pages/home', as: 'home'

  get 'pages/needs', as: 'needs'

  get 'pages/request', to: 'pages#request_items', as: 'request_items'

  get 'pages/inventory', as: 'inventory'

  get 'pages/admin', as: 'admin'

  get 'pages/donate', as: 'donate'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#hello'
end
