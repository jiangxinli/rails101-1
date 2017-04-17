Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
    resources :groups do
      member do
        post :join
      end
      resources :posts
    end

    namespace :account do
      resources :groups
      resources :posts
    end

    root 'groups#index'
end
