class UpdateLongitudeToGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :longtitude
    add_column :games, :longitude, :string
  end
end
