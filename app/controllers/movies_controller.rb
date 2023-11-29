class MoviesController < ApplicationController
  def new
#    @movie = Movie.new
  end

  def create
    @movie = Movie.new(video_params)
    @movie.create
    redirect_to @movie
  end

  def index
#    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :introduction, :movie)
  end
end
