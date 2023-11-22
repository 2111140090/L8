Rails.application.routes.draw do
  root 'top#login'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  resources :users
  resources :likes, only: [:create, :destroy]
end
