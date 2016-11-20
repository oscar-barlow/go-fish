require "./DeckClass.rb"
require "./PlayerClass.rb"

GoFishDeck = ShuffledDeck.new
@current_players = Array.new
@user_player = ''

def prompt
  print "> "
end

def make_hand(i) # call this function with 1 argument
  hand = Array.new # make a new array object assigned to hand
  i.times do # as many times as the argument you were given...
    card = GoFishDeck.order.shift # get the first card from @go_fish_deck
    hand.push(card) # add that card to the hand array
  end
  hand # return the array with i cards from the top of @go_fish_deck
end

def show_hand(array)
  line_width = 80
  puts "- Your Hand -".center line_width
  puts array.join(" / ").center line_width
  print "\n"
end

def make_players(i)
  game_players = PlayersLibrary.shuffle

  i.times do
    playername = game_players.shift
    new_player = CardPlayer.new("#{playername}", 5)
    @current_players.push(new_player)
  end
end

def show_players(array)
  line_width = 80
  puts "- You are playing with -".center line_width
  puts array.collect { |player| player.name }.join(", ").center line_width
end


def get_players_no
  puts "How many people do you want to play with?"
  prompt
  players_number = gets.chomp.to_i
  make_players(players_number)
end

def add_user_player
  puts "What's your name?"
  prompt
  playername = gets.chomp
  @user_player = CardPlayer.new("#{playername}", 5)
  @current_players.push(@user_player)
end

# ----------

puts "Let's play a game of \'Go Fish\'!"
get_players_no
show_players(@current_players)
add_user_player
show_hand(@user_player.hand)
