class CreateLocationStarts < ActiveRecord::Migration
  def change
    create_table :location_starts do |t|
      t.string :name

      t.timestamps
    end
  end
end
