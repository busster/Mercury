Rails.application.routes.draw do

  mount ActionCable.server => '/cable'

  devise_for :users, :controllers => {:registrations => "registrations"}

  resources :emotes
  resources :chatrooms
  resources :messages, only: [:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'application#index'
  
end
