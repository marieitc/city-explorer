class Participation < ApplicationRecord
  belongs_to :user
  belongs_to :game
  has_maby :findings
end
