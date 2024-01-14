Rails.application.routes.draw do

  post 'top/login'
  get 'top/login_form'
  post 'top/login_form'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  post 'top/edit'
  get 'users/new'
  post "likes/create"
  get "likes/destroy"
#  get 'users/exist_error'
#  get 'users/registered'

  
  root 'videos#index'
  get 'videos/index'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users
  resources :videos
  resources :likes
end
