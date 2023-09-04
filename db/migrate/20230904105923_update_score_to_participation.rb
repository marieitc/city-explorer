class UpdateScoreToParticipation < ActiveRecord::Migration[7.0]
  def change
    remove_column :participations, :score, :integer
    add_column :participations, :score, :integer, default: 0, null: false
  end
end
