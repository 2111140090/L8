Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  post 'top/login'
  get 'top/login_form'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  
  root 'movies#index'
  get 'movies/index'
  resources :users
  resources :movies
  resources :likes, only: [:create, :destroy]
end
