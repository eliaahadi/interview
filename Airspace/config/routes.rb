Rails.application.routes.draw do
  # get '/' to 'places#index'
  # get '/' => redirect("/places") 
  resources :places, except: [:update, :edit, :destroy]
  resources :distances, only: [:new, :create]

  root 'places#index'
end
