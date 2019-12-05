Rails.application.routes.draw do
  resources :users do
    resources :renteds
  end

  resources :books do
      resources :reviews
  end

  # resources :users
  root to: "home#index"
  get 'books/show', as:'detail'
  get 'home/index'
  #devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  get '/users/show', as: 'profile'
  get '/users/map', as: 'map'
end
