require 'game'

describe Game do
  subject(:game) { described_class.new('Dave', 'Mittens') }
  let(:dave) { double :player }
  let(:mittens) { double :player }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player_1.name).to eq 'Dave'
    end
  end

  describe '#player2' do
    it 'retrieves the first player' do
      expect(game.player_2.name).to eq 'Mittens'
    end
  end

  context 'start game' do
    it 'starts a game with one player' do
      expect(game.player_1.name).to eq 'Dave'
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(mittens).to receive(:receive_damange)
      game.attack(mittens)
    end
  end
end
