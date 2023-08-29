class RenameTokenToPin < ActiveRecord::Migration[7.0]
  def change
    rename_column :games, :token, :pin
  end
end
