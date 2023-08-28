class AddStatusToGame < ActiveRecord::Migration[7.0]
  def change
    add_column :games, :status, :boolean, default: 'pending', null: false
  end
end
