class UsersController < ApplicationController
    
    require 'bcrypt'
    
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def create
        if User.find_by(uid: params[:user][:uid])
            #あったら、既に登録済みエラー画面
            redirect_to users_exist_error_path
        else
            if (params[:user][:password] != params[:user][:password_confirmation])
                redirect_to users_pw_error_path
            else
                @user = User.new(
                uid: params[:user][:uid],
                password: params[:user][:password],
                password_confirmation: params[:user][:password_confirmation])
                if @user.save
                    redirect_to users_registered_path
                else
                    redirect_to users_exist_error_path
                end
            end
        end
    end
  
    def destroy
        User.find_by(uid: params[:uid]).destroy
        @users = User.all
        render "index"
    end
      
    def show
        User.find_by(uid: params[:uid]).destroy
        @users = User.all
        render "index"
    end
end