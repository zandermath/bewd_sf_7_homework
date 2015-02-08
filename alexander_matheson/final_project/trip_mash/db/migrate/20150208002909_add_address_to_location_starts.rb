class AddAddressToLocationStarts < ActiveRecord::Migration
  def change
    add_column :location_starts, :address, :string
  end
end
