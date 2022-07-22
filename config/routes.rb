Rails.application.routes.draw do
  get 'mypages/show'
  devise_for :users
  root 'posts#index'
  resources :posts
  resources :users
end
