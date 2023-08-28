class CreatePlaces < ActiveRecord::Migration[7.0]
  def change
    create_table :places do |t|
      t.string :name
      t.float :latitude
      t.float :longtitude
      t.integer :points

      t.timestamps
    end
  end
end
