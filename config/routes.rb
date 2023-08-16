Rails.application.routes.draw do
  devise_for :users
  root to: 'tweets#index'
  resources :tweets
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update, :show]
end