class Game < ApplicationRecord
  belongs_to :user
  has_many :participations
  has_many :game_places

  before_commit :generate_token

  def generate_token
    self.token = 'lalala'
  end
end
