Rails.application.routes.draw do
  resources :groups do
    resources :posts
    post "posts/new", to: "posts#create", as: :new_post
  end
  resources :posts do
    resources :comments
  end

  devise_for :users
  root to: 'groups#index'
  resources :user_groups
  end
