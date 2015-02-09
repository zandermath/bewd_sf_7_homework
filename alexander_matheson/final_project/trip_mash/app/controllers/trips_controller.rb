class TripsController < ApplicationController
  def index
    @q = Trip.ransack(params[:q])
    @trips = @q.result
    @hash = Gmaps4rails.build_markers(@trips) do |trip, marker|
      marker.lat trip.latitude
      marker.lng trip.longitude
      marker.infowindow trip.description
    end
  end

  def new
  	@trip = Trip.new
  end

  def create
  	@trip = Trip.new(trip_params)
    @trip.user = current_user
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
  		params.require(:trip).permit(:description, :has_car, :spots, :cost, :date_start, :date_end, :pick_up, :location_start_id, :location_end_id, :activity_id, :region_id, :location_end, :date_range, :search_activity_id, :search_region_id, :user_id, :address, :latitude, :longitude)
  	end

  	def get_trip
  		@trip = Trip.find(params[:id])
  	end
end
