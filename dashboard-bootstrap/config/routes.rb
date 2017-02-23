Rails.application.routes.draw do
  resources :dashboards do
    resources :companies
  end
  root 'dashboards#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
