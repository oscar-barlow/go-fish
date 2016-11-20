class Card

  attr_reader :value, :suit, :rank

  def initialize(value, suit)
    @value = value
    @suit = suit
    @rank = rank_name
  end

  def greater_than_ten?
    @value > 10
  end

  def rank_name
    "Jack" if @value == 11
  end

end
