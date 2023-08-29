class Place < ApplicationRecord
  geocoded_by :address
  has_many :game_places, dependent: :destroy

  after_validation :geocode, if: :will_save_change_to_address?
end
