class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :radius
      t.integer :places_number
      t.string :location
      t.float :latitude
      t.float :longtitude
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
