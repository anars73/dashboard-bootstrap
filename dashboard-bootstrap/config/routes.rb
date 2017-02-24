Rails.application.routes.draw do

  resources :dashboard, only: [:index]
  root 'dashboard#index'
  resources :companies do
    resources :employees
    end
end
