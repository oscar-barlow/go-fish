require 'deck'

describe Deck do

  subject(:deck) {described_class.new}

  it 'initializes with an empty array' do
    expect(deck.order).to be_empty
  end

end
