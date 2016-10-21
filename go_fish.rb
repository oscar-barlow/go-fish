Spades = ["♤",[1,2,3,4,5,6,7,8,9,10,11,12,13]]
Clubs = ["♧",[1,2,3,4,5,6,7,8,9,10,11,12,13]]
Hearts = ["♡",[1,2,3,4,5,6,7,8,9,10,11,12,13]]
Diamonds = ["♢",[1,2,3,4,5,6,7,8,9,10,11,12,13]]

Deck = [Spades, Clubs, Hearts, Diamonds]

def suit
  Deck.sample
end

def random_card_select_delete
  card = suit[1].sample
  suit.delete(card)
  "#{suit[0]} #{card}"
end

def shuffled_deck
  shuffled_deck = Array.new
  52.times do
    shuffled_deck.push(random_card_select_delete)
  end
  shuffled_deck
end

class ShuffledDeck
  def initialize
    @order = shuffled_deck
  end

  def order
    @order
  end

  def delete_card(c)
    @order.delete(c)
  end

end

def make_hand(i)
  hand = Array.new
  i.times do
    c = shuffled_deck.sample
    hand.push(c)
  end
  hand
end

def deal_hand(i)
  line_width = 80
  h = make_hand(i)

  puts "- Your Hand -".center line_width
  puts h.join(" / ").center line_width
end
