Rails.application.routes.draw do

  get 'conversations/index'

  get 'conversations/new'

  get 'conversations/show'

  #users construction for devise and adjustments for 
  devise_for :users
  resources :users, :only => [:show]
  resources :users do
    member do
      get :following, :followers
    end
  end

  #Mailboxer Conversations and Messages
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :restore
      post :reply
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  resources :messages, only: [:new, :create]

  #Relationships for following and followers
  resources :relationships, only: [:create, :destroy]

  #Locations etc. 
  resources :activitys
  resources :location_ends
  resources :location_starts
  get 'static_pages/about'
  resources :trips
  resources :regions
  root 'static_pages#home'

end
