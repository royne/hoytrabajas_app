Rails.application.routes.draw do
  root 'banks#index'
  devise_for :users
  
  resources :banks
  resources :providers
end
