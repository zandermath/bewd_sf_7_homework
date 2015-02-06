class AddLatitudeAndLongitudeToLocationStarts < ActiveRecord::Migration
  def change
    add_column :location_starts, :latitude, :float
    add_column :location_starts, :longitude, :float
  end
end
