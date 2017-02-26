Rails.application.routes.draw do

  get 'users/new'

  resources :dashboard, only: [:index]

  root 'dashboard#index'
  resources :companies do
    resources :employees
  end
end
