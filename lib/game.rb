require_relative 'player'

class Game

  attr_reader :players

  def initialize(number_of_players)
    @players = []
    number_of_players.times { @players << Player.new("Johnny") }
  end

end
