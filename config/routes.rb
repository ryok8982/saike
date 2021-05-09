Rails.application.routes.draw do
  resources :users
  namespace :admin do
    resources :users
  end
  get 'admin', to: 'admin#index'
  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
