class RemoveFoundToGamePlaces < ActiveRecord::Migration[7.0]
  def change
    remove_column :game_places, :found
    add_column :game_places, :found, :boolean, default: false, null: false
  end
end
