Rails.application.routes.draw do
  root to: "dashboards#index"
  resources :portfolios, only: [:index, :create, :new, :show]
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
