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

  it 'doesn\'t store a rank for cards with a value of less than 10' do
    card = create_card(value: 9)
    expect(card.rank).to be_nil
  end

  it 'knows when a card is an Ace' do
    card = create_card(value: 1)
    expect(card.is_ace?).to be_truthy
  end

  it "stores something in rank for Aces" do
    card = create_card(value: 1)
    expect(card.rank).to be_truthy
  end

  it 'stores a rank of "Ace" for Aces' do
    card = create_card(value: 1)
    expect(card.rank).to eq "Ace"
  end

  it 'stores a rank of "Queen" for cards with value 12' do
    card = create_card(value: 12)
    expect(card.rank).to eq "Queen"
  end

  it 'stores a rank of "King" for cards with value 13' do
    card = create_card(value: 13)
    expect(card.rank).to eq "King"
  end

end

def create_card(arguments)
  value = arguments[:value] ||= 7
  suit =  arguments[:suit] ||= "♤"
  Card.new(value, suit)
end
