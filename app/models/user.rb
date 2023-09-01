class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :participations, dependent: :destroy
  has_many :games, dependent: :destroy
  has_one_attached :photo

  acts_as_favoritor

  validates :nickname, presence: true, uniqueness: true
  validates :password, length: { in: 6..20 }
  validates :email, presence: true

  private

  def user_params
    params.require(:user).permit(:photo)
  end
end
