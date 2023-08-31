class GameChannel < ApplicationCable::Channel
  def subscribed
    game = Game.find(params[:id])
    stream_from game
  end

  def receive(data)
    debugger
  end
end
