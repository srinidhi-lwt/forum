Rails.application.routes.draw do
  root 'users#index'
  resources :users
  resources :questions
  resources :answers
end
