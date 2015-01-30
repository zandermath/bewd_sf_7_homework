class CreateLocationEnds < ActiveRecord::Migration
  def change
    create_table :location_ends do |t|
      t.string :name
      t.string :pic

      t.timestamps
    end
  end
end
