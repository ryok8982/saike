Rails.application.routes.draw do
  resources :news
  resources :users
  namespace :admin do
    resources :users
    resources :news
  end
  resources :activitys
  get 'admin', to: 'admin#index'
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
