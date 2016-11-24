require 'game'

describe Game do

  subject(:game) {described_class.new(2)}

  describe '#initialize' do

    it 'initializes with at least 1 computer player in it' do
      go_fish_game = Game.new(1)
      expect(go_fish_game.players.length).to eq 1
    end

  end

end
