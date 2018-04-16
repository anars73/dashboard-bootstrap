Rails.application.routes.draw do
  resources :categories
  resources :products
  devise_for :admins
  resources :dashboard, only: [:index]

  root 'dashboard#index'
  resources :companies do
    resources :employees
    resources :categories
    resources :products
  end
end