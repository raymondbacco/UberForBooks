Rails.application.routes.draw do
  resources :places
  resources :renteds
  resources :books
  resources :reviews
  resources :project_users
  root to: "home#index"
  get 'books/show', as:'detail'
  get 'home/index'
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end
end
