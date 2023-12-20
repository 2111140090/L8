Rails.application.routes.draw do
  post "likes/:post_id/create" => "likes#create"
  post "likes/:post_id/destroy" => "likes#destroy"

  post 'top/login'
  get 'top/login_form'
  post 'top/login_form'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  post 'top/edit'
  get 'users/new'
#  get 'users/exist_error'
#  get 'users/registered'

  
  root 'users#new'
  get 'videos/index'
  get "up" => "rails/health#show", as: :rails_health_check
  resources :users
  resources :videos
  resources :likes, only: [:create, :destroy]
end
