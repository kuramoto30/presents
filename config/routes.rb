Rails.application.routes.draw do
  root 'posts#index'
  devise_for :users
  resources :posts do
    resource :keeps, only: [:create, :destroy]
  end
  get '/users/:id', to: 'users#show'
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
