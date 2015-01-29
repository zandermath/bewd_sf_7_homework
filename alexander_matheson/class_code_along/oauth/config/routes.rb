Rails.application.routes.draw do

  devise_for :models
resources :users, only: [:show, :index]
root 'static_pages#home'

end