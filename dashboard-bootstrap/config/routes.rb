Rails.application.routes.draw do
  resources :products
  devise_for :admins
  resources :dashboard, only: [:index]

  root 'dashboard#index'
  resources :companies do
    resources :employees
  end
end