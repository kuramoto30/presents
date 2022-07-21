Rails.application.routes.draw do
  get 'users/index'
  get 'users/create'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  root "posts#index"
  resources :posts
end
