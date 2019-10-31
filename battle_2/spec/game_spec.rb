require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#player1' do
    it 'retrieves the first player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#player2' do
    it 'retrieves the first player' do
      expect(game.player_2).to eq player_2
    end
  end

  context 'start game' do
    it 'starts a game with one player' do
      expect(game.player_1).to eq player_1
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:receive_damange)
      game.attack(player_2)
    end
  end
end
