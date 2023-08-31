class AddLocatedToParticipations < ActiveRecord::Migration[7.0]
  def change
    add_column :participations, :located, :boolean, default: false
  end
end
