class GamesController < ApplicationController
  before_action :authenticate_user!

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params_game)
    @game.user = current_user

    if @game.save
      redirect_to game_lobby_path(@game)
    end
  end

  def show
    # @game = Game.find(params[:id])
    @places = Place.sample(4)

    @markers = @places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longtitude
      }
    end
  end

  # def start
  #   broadcast game show url
  # end

  def lobby
    @game = Game.find(params[:game_id])
  end

  def join
    @game = Game.find_by(pin: params[:pin])
    redirect_to game_lobby_path(@game)
  end

  private

  def params_game
    params.required(:game).permit(:radius, :places_number, :location, :latitude, :longitude)
  end
end
