Rails.application.routes.draw do
  devise_for :users
  root 'posts#index'

  resources :posts do
    collection do
      get 'search'
    end
    resource :keeps, only: [:create, :destroy]
  end

  resources :users, only: [:show, :index]

  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

end
