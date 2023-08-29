class Game < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_many :game_places
  geocoded_by :location

  before_commit :generate_token
  after_commit :geocode, if: :will_save_change_to_location?

  def generate_token
    self.token = 'lalala'
  end
end
