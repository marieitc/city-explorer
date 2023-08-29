class AddLatitudeAndLongitudeToParticipations < ActiveRecord::Migration[7.0]
  def change
    add_column :participations, :latitude, :float
    add_column :participations, :longitude, :float
  end
end
