Rails.application.routes.draw do
  devise_for :users
  resources :events

  root 'visitors#index'
end
