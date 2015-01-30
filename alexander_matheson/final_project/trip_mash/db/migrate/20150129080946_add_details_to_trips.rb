class AddDetailsToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :location_start_id, :integer
    add_column :trips, :location_end_id, :integer
    add_column :trips, :activity_id, :integer
  end
end
