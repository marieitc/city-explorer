class ChangeLongitudeToFloatForPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :longitude
    add_column :places, :longitude, :float
  end
end
