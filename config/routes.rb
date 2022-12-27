Rails.application.routes.draw do
  root 'dashboard#index'
  devise_for :users
  
  resources :banks
  resources :providers
  resources :dashboard, only: %i[index]

end
