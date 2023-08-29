class AddPlacesAndDistanceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :places, :integer
    add_column :users, :distance, :integer
  end
end
