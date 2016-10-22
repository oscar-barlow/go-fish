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

PlayersLibrary = [
  "John",
  "Sandra",
  "Abel",
  "Nikolai",
  "Miko",
  "Ali",
]

def make_players(i)

  puts "Great! Let's get started."
end

def get_players_no # MASSIVE WIP!
  puts "How many people do you want to play with?"
  prompt
end

puts "Let's play a game of \'Go Fish\'!"


players_number = gets.chomp.to_i


if players_number > 10
  puts "I'm sorry, you can have a maximum of 10 players.", "\n"
  puts "How many people do you want to play with?"
  prompt
  players_number = gets.chomp.to_i

elsif players_number == 0
  puts "I'm sorry, you have to play with at least one other player.", "\n"
  puts "How many people do you want to play with?"
  prompt
  players_number = gets.chomp.to_i

else
  great
end


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
