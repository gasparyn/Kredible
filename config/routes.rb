Rails.application.routes.draw do
  resources :blogs do
    resources :comments, :only => [:create]
  end

  resources :applications

  resources :reviews

  get 'listings/index'

  resources :properties

  root to: 'blogs#index'
end
