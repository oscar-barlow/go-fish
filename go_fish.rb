require "./DeckClass.rb"

GoFishDeck = ShuffledDeck.new

def prompt
  print "> "
end

def make_hand(i)
  hand = Array.new
  i.times do
    card = GoFishDeck.sample
    hand.push(card)
    GoFishDeck.delete_card(card)
  end
  hand
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
