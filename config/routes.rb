Rails.application.routes.draw do
  get 'user/new'
  get 'user/create'
  get 'user/index'
  devise_for :users
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'posts#index'
end
