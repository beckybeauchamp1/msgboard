Rails.application.routes.draw do
  # nice job implementing devise and nested resources!
  devise_for :users
  resources :messages do
  	resources :comments
  end
  # I would place this at the top of our routes
  root 'messages#index'
  end
