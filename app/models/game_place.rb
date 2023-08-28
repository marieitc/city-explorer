class GamePlace < ApplicationRecord
  belongs_to :place
  belongs_to :game
end
