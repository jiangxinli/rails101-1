Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
    resources :groups do
      resources :posts
    end
    root 'groups#index'
end
