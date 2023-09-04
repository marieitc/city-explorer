class UpdatePointsToPlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :places, :points, :integer
    add_column :places, :points, :integer, default: 5
  end
end
