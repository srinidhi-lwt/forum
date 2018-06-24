Rails.application.routes.draw do
  root 'users#index'
  resources :users do
  	get 'interests', on: :member
  end
  resources :questions
  resources :answers, only: [:create]
  resources :categories
end
