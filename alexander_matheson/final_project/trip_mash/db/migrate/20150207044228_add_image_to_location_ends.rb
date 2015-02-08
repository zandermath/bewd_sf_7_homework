class AddImageToLocationEnds < ActiveRecord::Migration
  def change
    add_column :location_ends, :image_id, :string
  end
end
