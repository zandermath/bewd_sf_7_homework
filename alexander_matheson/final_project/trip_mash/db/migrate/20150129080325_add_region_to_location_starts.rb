class AddRegionToLocationStarts < ActiveRecord::Migration
  def change
    add_column :location_starts, :region_id, :integer
  end
end
