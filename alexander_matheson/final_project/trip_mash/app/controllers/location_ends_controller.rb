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

  private
  	def location_end_params
  		params.require(:location_end).permit(:name, :pic, :image)
  	end

    def get_location_end
      @location_end = LocationEnd.find(params[:id])
    end
end