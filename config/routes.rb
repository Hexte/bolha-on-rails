Rails.application.routes.draw do
  get 'search/index'
  get 'user/new'
  get 'user/create'
  get '/user/:id', to: 'user#index'
  get '/search/:q', to: 'search#index'
  devise_for :users
  resources :posts

  resources :posts do
    collection do
      match 'search' => 'posts#search', via: [:get, :post], as: :search
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'posts#index'

  

end
