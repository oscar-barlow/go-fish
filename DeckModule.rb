# Build a shuffled array from a deck of cards
def shuffled_deck
  deck, shuffle = Array.new, Array.new
  suit = ["H", "C", "D", "S"]
  (0..3).each do |i|
    (1..13).each do |j|
      deck << "#{suit[i]} #{j}"
    end
  end
  52.times do
   shuffle << (card = deck.sample)
   deck.delete(card)
 end
 shuffle
end
