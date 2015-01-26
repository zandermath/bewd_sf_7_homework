Rails.application.routes.draw do
  get 'users/index'

  get 'users/new'

  get 'users/show'

  root 'iso_rides_home#index'


end
