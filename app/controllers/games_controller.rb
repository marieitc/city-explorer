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
    else
      redirect_to new_game_path
    end
  end

  def show
    @game = Game.find(params[:id])
    # @participations = @game.participations


    @markers = @game.places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end

    @photos = @game.places do |place|
      place
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
    @game = Game.find(params[:game_id])
  end

  def join
    @game = Game.find_by(pin: params[:join][:pin])
    redirect_to game_lobby_path(@game)
  end

  private

  def params_game
    params.required(:game).permit(:radius, :places_number, :location, :latitude, :longitude)
  end
end
