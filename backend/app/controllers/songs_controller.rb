class SongsController < ApplicationController
  before_action :define_current_song
  
  def create
    song = Song.create(song_params)
    render json: song
  end
  
  def index
    render json: Song.all
  end
  
  def show
    render json: current_song
  end
  
  def update
    current_song.update(song_params)
    render json: current_song
  end
  
  def destroy
    current_song.destroy
    render json: current_song
  end
  
  def song_params
    params.permit(:name, :date_published, :artist_id)
  end
  
  def define_current_song
    if params[:id]
      @current_song = Song.find(params[:id])
    else
      @current_song = Song.new
    end
  end
  
  def current_song
    @current_song
  end
end
