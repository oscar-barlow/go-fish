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
  line_width = `/usr/bin/env tput cols`.to_i
  puts "- Your Hand -".center line_width
  puts array.join(" / ").center line_width
  print "\n"
end

def make_players(i)
  puts "Great! Let's get started."
  game_players = PlayersLibrary.shuffle

  current_players = Array.new

  i.times do
    new_player = game_players.shift
    new_player = CardPlayer.new("#{new_player}", 5)
    current_players.push(new_player)
  end
  show_players(current_players) # how do I make it show me the names, not the object ids? How do I find and manipulate the objects?
end

def show_players(array)
  line_width = `/usr/bin/env tput cols`.to_i
  puts "- Your are playing with: -".center line_width
  puts array.join(", ").center line_width
  print "\n"
end


def get_players_no
  puts "How many people do you want to play with?"
  prompt
  players_number = gets.chomp.to_i
  make_players(players_number)
end

# ----------

puts "Let's play a game of \'Go Fish\'!"
get_players_no
