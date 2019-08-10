require_relative '../bin/main'

describe "::Game" do
  let(:game) {Game.new}

  describe '#initialize' do
    it 'creates a game' do
      expect(game.nil?).to eql(false)
    end
  end
end
