class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_many :findings, dependent: :destroy
end
