Rails.application.routes.draw do

  resources :dashboard, only: [:index]
  root 'dashboard#index'
  resources :companies
  resources :employees

end
