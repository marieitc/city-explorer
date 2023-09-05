class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :findings, dependent: :destroy

  def found?(game_place)
    findings.find_by(game_place: game_place).present?
  end
end
