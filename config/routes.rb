Rails.application.routes.draw do
  root 'top#login'
  resource :sessions, only: [:new, :create, :destroy]
end
