Rails.application.routes.draw do
  
  
  root 'top#login'
  get 'users/new'
  post 'users/new'
end
