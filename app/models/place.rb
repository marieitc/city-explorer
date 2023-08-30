class Place < ApplicationRecord
  geocoded_by :address
  has_many :game_places, dependent: :destroy
  has_one_attached :photo

  after_validation :geocode, if: :will_save_change_to_address?
end
