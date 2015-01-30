Rails.application.routes.draw do

  get 'static_pages/about'

  resources :trips

  root 'static_pages#home'

end
