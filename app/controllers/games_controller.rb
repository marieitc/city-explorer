class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params_game)

    redirect_to game_lobby_path(@game) if @game.save
  end

  def show
    @game = Game.find(params[:id])
    @participations = @game.participations

    @markers = @game.places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end

    # @user_position = @participations.geocoded.map do |participation|
    #   {
    #     lat: participation[:latitude],
    #     lng: particpation[:longitude]
    #   }
    # end
  end

  # def start
  #   broadcast game show url
  # end

  def lobby
    # @game = Game.find_by(token: params[:id])
  end

  def join
    @game = Game.find_by(token: params[:token])
    redirect_to game_lobby_path(@game)
  end

  private

  def params_game
    params.required(:game).permit(:radius, :places_number, :location, :latitude, :longitude)
  end
end
