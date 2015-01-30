class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.text :description
      t.boolean :has_car
      t.integer :spots
      t.decimal :cost
      t.date :date_start
      t.date :date_end
      t.boolean :pick_up

      t.timestamps
    end
  end
end
