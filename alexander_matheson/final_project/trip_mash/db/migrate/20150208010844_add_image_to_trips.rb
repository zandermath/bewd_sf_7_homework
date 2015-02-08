class AddImageToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :image_id, :string
  end
end
