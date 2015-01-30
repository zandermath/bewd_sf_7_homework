class CreateJoinTableLocationEndLocationStart < ActiveRecord::Migration
  def change
  	create_join_table :location_end, :location_start do |t|
      # t.index [:customer_id, :product_id]
      # t.index [:product_id, :customer_id]
    end
  end
end
