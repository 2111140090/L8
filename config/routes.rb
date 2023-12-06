Rails.application.routes.draw do
<<<<<<< HEAD
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
=======
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  
  resources :videos
  root "videos#index"
>>>>>>> 755402eefd9b953cb0a155bcbd3cdf0f59b06b82
end
