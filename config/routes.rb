Rails.application.routes.draw do
  root to: "dashboards#index"
  resources :recruitments
  resources :portfolios
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
