require "./DeckClass.rb"
require "./PlayerClass.rb"

GoFishDeck = ShuffledDeck.new

def prompt
  print "> "
end

def make_hand(i) # call this function with 1 argument
  hand = Array.new # make a new array object assigned to hand
  i.times do #as many times as the argument you were given...
    card = GoFishDeck.shift # get the first card from GoFishDeck
    hand.push(card) # add that random card to the hand array
  end
  hand # return the array with i random cards from GoFishDeck
end

def show_hand(array)
  line_width = 80
  puts "- Your Hand -".center line_width
  puts array.join(" / ").center line_width
  print "\n"
end

players = [
  "John",
  "Sandra",
  "Abel",
  ""
]


# ----------

# This section was used for debugging. Probably not useful any more
# But I'm gonna keep it til I'm sure.

# deck_count = GoFishDeck.order.count

# while deck_count > 0
#   puts "How many cards shall I deal you?"
#   prompt
#   dealout = gets.chomp.to_i
#   player_hand = make_hand(dealout)
#   show_hand(player_hand)
#   puts "Let's chuck those away."
#   puts "There are #{GoFishDeck.order.length} cards left."
# end
