# Constants and methods to build a deck of cards

Spades = ["♤",[1,2,3,4,5,6,7,8,9,10,11,12,13]]
Clubs = ["♧",[1,2,3,4,5,6,7,8,9,10,11,12,13]]
Hearts = ["♡",[1,2,3,4,5,6,7,8,9,10,11,12,13]]
Diamonds = ["♢",[1,2,3,4,5,6,7,8,9,10,11,12,13]]

Deck = [Spades, Clubs, Hearts, Diamonds]

def suit
  Deck.sample
end

# pick a random card from one of the suits. Combine it with its suit sign.
# Delete it from the suit so it won't get picked again.
def random_card_select_delete
  card = suit[1].sample
  suit.delete(card)
  "#{suit[0]} #{card}"
end

# Build an array of all cards in all suits
def shuffled_deck
  shuffled_deck = Array.new
  52.times do
    shuffled_deck.push(random_card_select_delete)
  end
  shuffled_deck
end
