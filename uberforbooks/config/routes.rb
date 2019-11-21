Rails.application.routes.draw do
  resources :renteds
  resources :books
  resources :reviews
  resources :project_users
  root to: "home#index"
  get 'home/index'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
