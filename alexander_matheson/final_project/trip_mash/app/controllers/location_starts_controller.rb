class LocationStartsController < ApplicationController
  def index
  	@location_starts = LocationStart.all
  end

  def new
  	@location_start = LocationStart.new
  end

  def create
  @location_start = LocationStart.new(location_start_params)
  	if @location_start.save
  		redirect_to trips_path
  	else
  		render :new
  	end
  end

  private
  	def location_start_params
  		params.require(:location_start).permit(:name, :region_id)
  	end

end
