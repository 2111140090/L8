class VideosController < ApplicationController
<<<<<<< HEAD
=======
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
    end

    private

    def video_params
        params.require(:video).permit(:title, :introduction, :video)
    end
>>>>>>> 755402eefd9b953cb0a155bcbd3cdf0f59b06b82
end
