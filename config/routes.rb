Rails.application.routes.draw do
  get 'sites/index'
  get 'sites/create'
  namespace :clients do
    get 'items/index'
    get 'items/create'
  end
  devise_for :customers
  devise_for :clients
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
