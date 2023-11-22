Rails.application.routes.draw do
  root 'top#login'
  get 'top/main'
  get 'top/login'
  get 'top/logout'
  
  
  
  get 'users/new'
  post 'users/new'
end
