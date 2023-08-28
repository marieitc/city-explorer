class CreateGamePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :game_places do |t|
      t.boolean :found
      t.references :place, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
