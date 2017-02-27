Rails.application.routes.draw do
  devise_for :users
  resources :dashboard, only: [:index]

  root 'dashboard#index'
  resources :companies do
    resources :employees
  end
end
