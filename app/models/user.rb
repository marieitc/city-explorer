class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :participations
  has_many :games

  # validates :nickname, presence: true, uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :email, presence: true
end
