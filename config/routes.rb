Rails.application.routes.draw do
  resources :blogs

  resources :applications

  resources :reviews

  get 'listings/index'

  resources :properties

  root to: 'listings#index'
end
