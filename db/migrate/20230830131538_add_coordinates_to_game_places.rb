class AddCoordinatesToGamePlaces < ActiveRecord::Migration[7.0]
  def change
    add_column :game_places, :latitude, :float
    add_column :game_places, :longitude, :float
  end
end
