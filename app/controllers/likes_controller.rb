class LikesController < ApplicationController
  def create
    movie = Movie.find(params[:movie_id])
    user = User.find_by(uid: session[:login_uid])
    user.like_movies << movie
    redirect_to root_path
  end

  def destroy
    movie = Movie.find(params[:id])
    user = User.find_by(uid: session[:login_uid])
    movie.likes.find_by(user_id: user.id).destroy
    redirect_to root_path
  end
end
