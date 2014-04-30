class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find_by title: params[:title]
    @comments = @video.comments
  end

  def new
    @video = Video.new
  end

  def create
    video = Video.new(video_params)
    video.save
    redirect_to root_path
  end

  def edit
    @video = Video.find_by_title params[:title]
  end

  def update
    @video = Video.find_by_title params[:video][:title]
    @video.update(video_params)
    redirect_to root_path
  end

  def destroy
    @video = Video.find_by_title params[:title]
    @video.destroy
    redirect_to root_path
  end

  private
  def video_params
    params.require(:video).permit(:title, :description, :youtube_id)
  end
end
