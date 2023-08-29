class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params_game)
    raise

    if @game.save
      redirect_to game_lobby_path(@game)
    end
  end

  def show
    # @game = Game.find(params[:id])
  end

  # def start
  #   broadcast game show url
  # end

  def lobby
    @game = Game.find_by(token: params[:id])
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
