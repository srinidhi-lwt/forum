Rails.application.routes.draw do
  root 'users#index'
  resources :users do
  	get 'interests', on: :member
  end
  resources :questions
  resources :answers, only: [:create, :show]
  resources :categories, only: [:create, :destroy]
  resources :votes, only: [:create]
end
