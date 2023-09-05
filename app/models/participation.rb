class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :findings, dependent: :destroy

  def all_places_found?
    self.findings.count == game.places_number
  end
end
