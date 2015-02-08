Rails.application.routes.draw do


  devise_for :users
  resources :users, :only => [:show]

  resources :activitys

  resources :location_ends
  resources :location_starts

  get 'static_pages/about'

  resources :trips
  resources :regions

  root 'static_pages#home'

end
