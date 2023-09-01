class GameChannel < ApplicationCable::Channel
  def subscribed
    game = Game.find(params[:id])
    stream_from "game-#{game.id}"
  end

  def receive(data)
    game = Game.find(data["game_id"])
    participation = Participation.find(data["participation_id"])
    participation.update(latitude: data["latitude"], longitude: data["longitude"])

    marker_data = {
      participation_id: data["participation_id"],
      latitude: data["latitude"],
      longitude: data["longitude"]
    }

    GameChannel.broadcast_to("game-#{game.id}", marker_data)
  end
end
