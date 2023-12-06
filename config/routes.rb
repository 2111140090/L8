Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  post 'top/login'
  get 'top/login_form'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  post 'top/edit'
  
  root 'videos#index'
  get 'videos/index'
  resources :users
  resources :videos
  resources :likes, only: [:create, :destroy]
end
