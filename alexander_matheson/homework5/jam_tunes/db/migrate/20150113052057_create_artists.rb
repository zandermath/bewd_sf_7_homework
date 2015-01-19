class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :pic_url
      t.integer :record_label_id

      t.timestamps
    end
  end
end
