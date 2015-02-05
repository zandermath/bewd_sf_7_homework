Rails.application.routes.draw do

  devise_for :users
  get 'activitys/index'

  get 'activitys/new'

  get 'activitys/show'

  resources :location_ends
  resources :location_starts

  get 'static_pages/about'

  resources :trips
  resources :regions

  root 'static_pages#home'

end
