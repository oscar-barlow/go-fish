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

  it 'checks if the card value is >10' do
    card = create_card(value: 11)
    expect(card.greater_than_ten?).to be_truthy
  end

  it 'returns Jack for a card value of 11' do
    card = create_card(value: 11)
    expect(card.rank_name).to eq "Jack"
  end

  it 'stores rank in an instance variable' do
    card = create_card(value: 11)
    expect(card.rank).to eq "Jack"
  end

  # it 'displays a rank instead of a number for cards with value > 10' do
  #   card = create_card(value: 11)
  #   expect(card.rank).to eq "Jack"
  # end

end

def create_card(arguments)
  value = arguments[:value] ||= 7
  suit =  arguments[:suit] ||= "♤"
  Card.new(value, suit)
end
