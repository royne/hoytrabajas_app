Rails.application.routes.draw do
  root 'banks#index'

  resources :banks
  devise_for :users
end
