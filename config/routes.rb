Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root "posts#index"
  resources :posts do
    collection do
      get 'search'
    end
  end
  resources :users, only: :show
  resources :tags, only: :show
end
