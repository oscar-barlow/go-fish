# Define an object that I can store a shuffled deck of cards in
# and give it a method so I can remove cards from the deck
# which is useful when I want to deal them out.

require "./DeckModule.rb"

class ShuffledDeck

  def initialize
    @order = DeckModule.shuffled_deck
  end

  def order # mainly for debugging. So I can get/look inside a ShuffledDeck object
    @order
  end

  def sample
    @order.sample
  end

  def delete_card(c)
    @order.delete(c)
  end

end
