Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :posts
  get '/users/:id', to: 'users#show'
end
