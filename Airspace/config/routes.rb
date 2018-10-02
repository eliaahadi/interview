Rails.application.routes.draw do
  resources :places, except: [:update, :edit, :destroy]
  
  resources :distances, only: [:new, :create]
  root 'places#index'
end
