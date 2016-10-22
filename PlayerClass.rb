class CardPlayer

  def initialize(name, hand, i)
    @name = name
    @hand = make_hand(i)
  end

  def name
    @name
  end

  def hand
    @hand
  end

end
