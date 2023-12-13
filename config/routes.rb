Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/destroy'
  post 'top/login'
  get 'top/login_form'
  post 'top/login_form'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  post 'top/edit'
  get 'users/new'
  
  
  root 'videos#index'
  get 'videos/index'
  get 'videos/new'
  get 'videos/show'
  resources :users
  resources :videos
  resources :likes, only: [:create, :destroy]
end
