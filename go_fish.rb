require "./DeckClass.rb"

GoFishDeck = ShuffledDeck.new

def make_hand(i)
  hand = Array.new
  i.times do
    hand.push(GoFishDeck.sample)
  end
  hand
end

def show_hand
  line_width = 80
  h = make_hand(i)

  puts "- Your Hand -".center line_width
  puts h.join(" / ").center line_width
end
