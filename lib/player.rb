# requests cards from other players to make books in their hand

class Player

  attr_reader :name

  def initialize(name)
    fail "A player name must be a string." unless is_a_string?(name)
    @name = name
  end

  private

  def is_a_string?(name)
    name.is_a? String
  end

end
