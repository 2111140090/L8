class UsersController < ApplicationController
    
    require 'bcrypt'
    
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create

        @user = User.new(
            uid: params[:user][:uid],
            password: params[:user][:password],
            password_confirmation: params[:user][:password_confirmation])
            render 'registered'
        if User.find_by(uid: params[:uid])
            render "exist_error"
            if @user.save
                redirect_to users_path
            else
                render 'new'
            end
        end
    end
end