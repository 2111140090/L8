class UsersController < ApplicationController
    
    
    def new
        @users = User.new
    end
    
    def create

        @user = User.new(
            uid: params[:user][:uid],
            password: params[:user][:password],
            password_confirmation: params[:user][:password_confirmation])
        if User.find_by(uid: params[:user][:uid])
            render "exist_error"
        else
        
            if @user.save
                redirect_to users_path
            else
                render 'new'
            end
        end
    end
end