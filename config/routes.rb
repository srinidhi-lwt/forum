Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :questions
  resources :answers, only: [:create]
  resources :categories
end
