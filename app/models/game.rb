class Game < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_many :game_places, dependent: :destroy
  has_many :places, through: :game_places

  after_create :set_places
  # before_commit :generate_token

  # def generate_token
  #   # self.token =
  # end

  def set_places
    places = Place.all.sample(places_number)

    places.each do |place|
      GamePlace.create!(game: self, place: place)
    end
  end
end
