class PostCommentsController < ApplicationController
    def create
        video = Video.find(params[:video_id])
        comment = current_user.post_comments.new(post_comment_params)
        comment.video_id = video.id
        comment.save
        redirect_to video_path(video)
    end
    
    def destroy
        PostComment.find(params[:id]).destroy
        redirect_to video_path(params[:video_id])
    end 

    private

    def post_comment_params
        params.require(:post_comment).permit(:comment)
    end
    
    def show
        @post_comment = PostComment.new
    end
    
end
