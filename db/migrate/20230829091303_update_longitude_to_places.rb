class UpdateLongitudeToPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :longtitude
    add_column :places, :longitude, :string
  end
end
