require "./DeckClass.rb"

GoFishDeck = ShuffledDeck.new

def prompt
  print "> "
end

def make_hand(i) # call this function with 1 argument
  hand = Array.new # make a new array object assigned to hand
  i.times do #as many times as the argument you were given...
    card = GoFishDeck.sample # get a random card from GoFishDeck
    hand.push(card) # add that random card to the hand array
    GoFishDeck.delete_card(card) # delete that random card from GoFishDeck
  end
  hand # return the array with i random cards from GoFishDeck
end

def show_hand(array)
  line_width = 80
  puts "- Your Hand -".center line_width
  puts array.join(" / ").center line_width
  print "\n"
end

while true
  puts "How many cards shall I deal you?"
  prompt
  dealout = gets.chomp.to_i
  player_hand = make_hand(dealout)
  show_hand(player_hand)
  puts "Let's chuck those away."
  puts "There are #{GoFishDeck.order.length} cards left."
end
