Rails.application.routes.draw do
  root 'stockitems#index'
  resources :stockitems
end
