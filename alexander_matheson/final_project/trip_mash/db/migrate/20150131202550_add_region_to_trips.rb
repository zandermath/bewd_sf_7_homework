class AddRegionToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :region_id, :integer
  end
end
