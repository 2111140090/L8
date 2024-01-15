Rails.application.routes.draw do

  post 'top/login'
  get 'top/login_form'
  post 'top/login_form'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  get 'top/error'
  post 'top/edit'
  get 'users/new'
  get 'users/index'
  post "likes/create"
  get "likes/destroy"
  get 'users/exist_error'
  get 'users/pw_error'
  get 'users/registered'
  get 'users/:uid' => 'users#destroy'

  
  root 'videos#index'
  get 'videos/index'
  get 'videos/error'
  get 'videos/nofile'
  get 'videos/notitle'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users
  resources :videos
  resources :likes
end
