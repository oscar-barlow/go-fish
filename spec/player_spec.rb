require 'player'

describe Player do

  subject(:player) {described_class.new("Oscar")}

  describe '#initialize' do

  it 'initializes with a name' do
    expect(player.name).not_to be_nil
  end

end

describe 'error handling' do

  it 'should only allow names that are strings' do
    message = "A player name must be a string."
    expect{ Player.new(33) }.to raise_error(RuntimeError, message)
  end

end

end
