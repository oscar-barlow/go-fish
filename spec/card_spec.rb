require 'card'

describe Card do

  it 'has a value that is an integer' do
    card = create_card(value: 3)
    expect(card.value).to be 3
  end

  it 'has a suit' do
    card = create_card(suit: "♤")
    expect(card.suit).to match /♤|♧|♡|♢/
  end

end

def create_card(arguments)
  value = arguments[:value] ||= 7
  suit =  arguments[:suit] ||= "♤"
  Card.new(value, suit)
end
