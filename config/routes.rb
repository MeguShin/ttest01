Rails.application.routes.draw do
  devise_for :users
  root 'stockitems#index'
  resources :stockitems
end
