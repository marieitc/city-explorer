class CreateFindings < ActiveRecord::Migration[7.0]
  def change
    create_table :findings do |t|
      t.references :participation, null: false, foreign_key: true
      t.references :game_place, null: false, foreign_key: true

      t.timestamps
    end
  end
end
