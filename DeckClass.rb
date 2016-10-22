# Define an object that I can store a shuffled deck of cards in
# and give it a method so I can remove cards from the deck
# which is useful when I want to deal them out.

require "./DeckModule.rb"

class ShuffledDeck

  def initialize
    @order = shuffled_deck
  end

  def order # mainly for debugging. So I can get/look inside a ShuffledDeck object
    @order
  end

  def sample # randomly pull a card from a ShuffledDeck
    hand = @order
    hand.sample
  end

  def delete_card(c) # delete a card from a ShuffledDeck
    hand = @order
    hand.delete(c)
  end

  def shift
    hand = @order
    hand.shift
  end

end
