class GenresController < ApplicationController
  def index
  	@genres = Genre.all
  end

  def new
  	@genre = Genre.new
  end

  def create
  	@artist = Artist.new(artist_params)
  	if @artist.save
  	 redirect_to artist_path(@artist)
    else
    render :new
    end
  end

  def show
  end
end
