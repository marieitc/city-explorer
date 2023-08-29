class ChangeLongitudeToFloat < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :longitude
    add_column :games, :longitude, :float
  end
end
