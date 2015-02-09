class LocationEndsController < ApplicationController
  def index
  	@location_ends = LocationEnd.all
  end

  def new
  	@location_end = LocationEnd.new
  end

  def create
  @location_end = LocationEnd.new(location_end_params)
  	if @location_end.save
  		redirect_to user_path(current_user)
  	else
  		render :new
  	end
  end

  def show
    @location_end = get_location_end
  end

  def edit
    @location_end = get_location_end
  end

  def update
    @location_end = Artist.update(location_end_params)
    if location_end.save
      redirect_to location_end_path(@location_end)
    else
      render :edit
    end
  end

  private
  	def location_end_params
  		params.require(:location_end).permit(:name, :pic, :image)
  	end

    def get_location_end
      @location_end = LocationEnd.find(params[:id])
    end
end