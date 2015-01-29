Rails.application.routes.draw do

  resources :users

  root 'iso_rides_home#index'


end
