Rails.application.routes.draw do
  root to: 'posts#index'

  devise_for :users
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end

  resources :users, only: :show

  resources :posts do
    collection do
      get 'search',to: "posts#index"
    end
    resource :keeps, only: [:create, :destroy]
    resources :comments, only: [:create, :destroy]
  end

end 
