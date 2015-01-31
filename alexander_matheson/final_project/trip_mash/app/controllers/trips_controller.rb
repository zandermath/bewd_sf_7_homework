class TripsController < ApplicationController
  def index
  	@trips = @trips.search(params[:search])
  end

  def new
  	@trip = Trip.new
  end

  def create
  	@trip = Trip.new(trip_params)
  	if @trip.save
  		redirect_to trip_path(@trip)
  	else
  		render :new
  	end
  end

  def show
  	@trip = get_trip
  end

  def edit
  	@trip = get_trip
  end

  def update
  	@trip = get_trip
  	if @trip.update(trip_params)
  		redirect_to @trip
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@trip = get_trip
  	@trip.destroy
  	redirect_to trips_path
  end

  private
  	def trip_params
  		params.require(:trip).permit(:description, :has_car, :spots, :cost, :date_start, :date_end, :pick_up, :location_start_id, :location_end_id, :activity_id)
  	end

  	def get_trip
  		@trip = Trip.find(params[:id])
  	end
end
