class ArtistsController < ApplicationController
  def index
  	@artists = Artist.all
    @artist_search = Artist.search(params[:search])
  end

  def new
  	@artist = Artist.new
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
  	@artist = get_artist
  end

  def edit
    @artist = get_artist
  end

  def update
    @artist = get_artist

    if @artist.update(artist_params)
    redirect_to @artist
  else
    render 'edit'
  end

  end

  def destroy
    @artist = get_artist
    @artist.destroy
    redirect_to artists_path
  end

  private

  def artist_params
  	params.require(:artist).permit(:name, :pic_url, :record_label_id)
  end

  def get_artist
  	@artist = Artist.find(params[:id])
  end

end
