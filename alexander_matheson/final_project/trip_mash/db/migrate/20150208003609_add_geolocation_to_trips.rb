class AddGeolocationToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :address, :string
    add_column :trips, :latitude, :float
    add_column :trips, :longitude, :float
  end
end
