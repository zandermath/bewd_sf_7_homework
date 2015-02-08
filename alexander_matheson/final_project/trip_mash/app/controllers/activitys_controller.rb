class ActivitysController < ApplicationController
   def index
  	@activitys = Activity.all
  end

  def new
  	@activity = Activity.new
  end

  def create
  @activity = Activity.new(activity_params)
  	if @activity.save
  		redirect_to activitys_path
  	else
  		render :new
  	end
  end

  private
  	def activity_params
  		params.require(:activity).permit(:name, :pic, :image)
  	end

end