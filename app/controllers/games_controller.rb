class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params_game)

    if @game.save
      redirect_to game_lobby_path(@game)
    else
      redirect_to new_game_path
    end
  end

  def show
    # @game = Game.find(params[:id])
  end

  # def start
  #   broadcast game show url
  # end

  def lobby
    # @game = Game.find_by(token: params[:token])
  end

  private

  def params_game
    params.required(:game).permit(:radius, :places_number, :location, :latitude, :longitude)
  end
end
