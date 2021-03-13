Rails.application.routes.draw do
  resources :orders
  devise_for :users
  root 'welcome#index'
  get 'welcome/about'
  get 'welcome/contact'
  get 'welcome/login'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
