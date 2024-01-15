class VideosController < ApplicationController
    def index
        @videos = Video.all
    end
    
    def new
        @video = Video.new
    end
    
    def create
        @video = Video.new(video_params)
        @video.save
        redirect_to @video
    end

    def show
        @video = Video.find(params[:id])
        @post_comment = PostComment.new
    end
    
    def destroy
        logger.debug("aaaaaaaaaaaaaaaaaaaa")
        video = Video.find(params[:id])
        video.destroy
        redirect_to root_path
    end

    private

    def video_params
        params.require(:video).permit(:title, :introduction, :video, :image)
    end
end
