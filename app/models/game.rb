class Game < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_many :game_places, dependent: :destroy
  has_many :places, through: :game_places

  geocoded_by :location

  before_save :generate_pin
  after_create :set_places
  before_commit :geocode, if: :will_save_change_to_location?

  def generate_pin
    self.pin = SecureRandom.hex.first(7)
  end

  def set_places
    places_near = Place.near([latitude, longitude], radius)
    game_places = places_near.sample(places_number)
    
    game_places.each do |place|
      gp = GamePlace.create(game: self, place: place, found: false)
      gp.generate_area_center
    end
  end
end
