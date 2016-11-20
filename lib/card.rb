class Card

  attr_reader :value, :suit, :rank

  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def greater_than_ten?
    @value > 10
  end

end
