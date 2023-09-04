class GamesController < ApplicationController
  before_action :authenticate_user!

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params_game)
    @game.user = current_user
    Participation.create(user: current_user, game: @game)

    if @game.save
      redirect_to game_lobby_path(@game)
    else
      redirect_to new_game_path
    end
  end

  def show
    @game = Game.find(params[:id])

    @participations = @game.participations
    @current_participation = @participations.find_by(user: current_user)


    @targets = @game.places.geocoded.map do |place|
      {
        lat: place.latitude,
        lng: place.longitude
      }
    end

    @areas = @game.game_places.map do |gp|
      {
        lat: gp.latitude,
        lng: gp.longitude,
      }
    end

    @places = @game.places
    @players = @participations.map do |participation|
      {
        participation_id: participation.id,
        lat: participation.latitude,
        lng: participation.longitude,
        marker_html: render_to_string(partial: 'player', locals: { participation: participation })
      }
    end
  end

  def ready
    @game = Game.find(params[:id])
    participation = @game.participations.find_by(user: current_user)
    participation.located = true
    participation.longitude = params[:longitude]
    participation.latitude = params[:latitude]
    participation.save

    LobbyChannel.broadcast_to("lobby-#{@game.id}", { participation_id: participation.id, action: 'ready' })
  end

  def start
    @game = Game.find(params[:game_id])
    # @game.started!
    LobbyChannel.broadcast_to("lobby-#{@game.id}", { url: game_path(@game), action: 'start' })
    # debugger
    # broadcast game show url
  end

  def lobby
    @game = Game.find(params[:game_id])
  end

  def join
    @game = Game.find_by(pin: params[:join][:pin])
    if @game.present?
      @participation = Participation.create(user: current_user, game: @game)
      html = render_to_string(partial: 'participation', locals: { participation: @participation })

      LobbyChannel.broadcast_to("lobby-#{@game.id}", { html: html, action: 'join' })
      redirect_to game_lobby_path(@game)
    end
  end

  def to_favorite
    current_user.favorite(game_place)
  end

  private

  def params_game
    params.required(:game).permit(:radius, :places_number, :location, :latitude, :longitude)
  end
end
