require 'card'

describe Card do

  subject(:card) {described_class.new(3, "♤")}

  it 'has a value that is an integer' do
    expect(card.value).to be_kind_of Integer
  end

  it 'has a suit' do
    expect(card.suit).to match /♤|♧|♡|♢/
  end

end
