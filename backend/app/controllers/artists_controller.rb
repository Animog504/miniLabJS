class ArtistsController < ApplicationController
  before_action :define_current_artist
  
  def create
    artist = Artist.create(artist_params)
    render json: artist
  end
  
  def index
    render json: Artist.all
  end
  
  def show
    render json: current_artist
  end
  
  def update
    current_artist.update(artist_params)
    render json: current_artist
  end
  
  def destroy
    current_artist.destroy
    render json: current_artist
  end
  
  def artist_params
    params.permit(:name, :age)
  end
  
  def define_current_artist
    if params[:id]
      @current_artist = Artist.find(params[:id])
    else
      @current_artist = Artist.new
    end
  end
  
  def current_artist
    @current_artist
  end
end
