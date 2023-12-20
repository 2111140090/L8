class LikesController < ApplicationController
    def create
        video = Video.find(params[:video_id])
        unless video.liked?(current_user)
           video.like(current_user)
        end
        redirect_to root_path
    end
    
    def destroy
        video = Video.find(params[:id])
        if video.liked?(current_user)
            video.unlike(current_user)
        end
        redirect_to root_path
    end
end
