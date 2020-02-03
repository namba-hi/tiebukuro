Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root "posts#index"
  resources :posts
end
