class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :image_id, :string
    add_column :users, :description, :text
    add_column :users, :age, :integer
    add_column :users, :home_town, :string
  end
end
