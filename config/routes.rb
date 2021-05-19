Rails.application.routes.draw do
    devise_for :users

  resources :news
  resources :users
  resources :requests
  namespace :admin do
    resources :users
    resources :news
    resources :activities
  end
  resources :activities
  get 'admin', to: 'admin#index'
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
