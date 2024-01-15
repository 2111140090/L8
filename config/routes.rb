Rails.application.routes.draw do
<<<<<<< HEAD

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # Defines the root path route ("/")
  # root "posts#index"
  
  root "videos#index"
  resources :videos, only: [:new, :create, :index, :show, :destroy] 
  resources :post_comments, only: [:create]


  


=======
>>>>>>> Y

  post 'top/login'
  get 'top/login_form'
  post 'top/login_form'
  get 'top/login'
  post 'top/login'
  get 'top/logout'
  get 'top/error'
  post 'top/edit'
  get 'users/new'
<<<<<<< HEAD
<<<<<<< HEAD
  get 'users/exist_error'
  get 'users/registered'

  

  

=======
=======
  get 'users/index'
>>>>>>> Y
  post "likes/create"
  get "likes/destroy"
  get 'users/exist_error'
  get 'users/pw_error'
  get 'users/registered'
  get 'users/:uid' => 'users#destroy'

  
  root 'videos#index'
>>>>>>> Y
  get 'videos/index'
<<<<<<< HEAD

=======
  get 'videos/error'
  get 'videos/nofile'
  get 'videos/notitle'
  get "up" => "rails/health#show", as: :rails_health_check
>>>>>>> Y
  resources :users
<<<<<<< HEAD
  
  resources :likes, only: [:create, :destroy]
end
=======
  resources :videos
  resources :likes
end
>>>>>>> Y
