Rails.application.routes.draw do
  devise_for :users
  devise_for :installs
    resources :groups
    root 'groups#index'
end
