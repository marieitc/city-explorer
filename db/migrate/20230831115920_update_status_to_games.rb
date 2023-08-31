class UpdateStatusToGames < ActiveRecord::Migration[7.0]
  def change
    remove_column :games, :status, :boolean, default: 'pending', null: false
    add_column :games, :status, :string, default: 'pending', null: false
  end
end
