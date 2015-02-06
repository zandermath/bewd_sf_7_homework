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
  		redirect_to trips_path
  	else
  		render :new
  	end
  end

  private
  	def location_end_params
  		params.require(:location_end).permit(:name, :image)
  	end

end