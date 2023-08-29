class Game < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_many :game_places
  geocoded_by :location

  before_save :generate_pin
  before_commit :geocode, if: :will_save_change_to_location?

  def generate_pin
    self.pin = 'lalala'
  end
end
