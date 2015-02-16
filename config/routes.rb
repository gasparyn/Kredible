Rails.application.routes.draw do
  resources :properties

  root to: 'visitors#index'
end
