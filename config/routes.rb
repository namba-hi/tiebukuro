Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root "posts#index"
  resources :posts do
    resources :comments, only: :create
    resources :likes, only: [:create, :destroy]
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  resources :tags, only: :show
end
