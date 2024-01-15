class TopController < ApplicationController
    
    def main
        render "login"
    end

    def login
        user = User.find_by(uid: params[:uid])
        if user != nil
          if BCrypt::Password.new(user.pass) == params[:pass]
            session[:login_uid] = params[:uid]
            redirect_to root_path
          else
            redirect_to top_error_path
          end
        else
          redirect_to top_error_path
        end
#       if user = User.find_by(uid: params[:uid]) and BCrypt::Password.new(user.pass) == params[:pass]
#            session[:login_uid] = params[:uid]
#            redirect_to root_path 
#        else
#            render 'error'
#        end
    end
    
    def login_form
        render 'login_form'
    end
    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end