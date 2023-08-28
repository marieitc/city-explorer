class Game < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_many :game_places
end
