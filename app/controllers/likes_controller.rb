class LikesController < ApplicationController
  def create
    video = Video.find(params[:video_id])
    user = User.find_by(uid: session[:login_uid])
    user.like_videos << video
    redirect_to root_path
  end

  def destroy
    video = Video.find(params[:id])
    user = User.find_by(uid: session[:login_uid])
    video.likes.find_by(user_id: user.id).destroy
    redirect_to root_path
  end
end
