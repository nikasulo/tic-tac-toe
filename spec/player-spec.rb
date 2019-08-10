require_relative '../lib/game'

describe '::Player' do
    let(:player) {Player.new("John", 'X')}
    let(:player_name) {player.name}
    let(:player_symbol) {player.symbol}

    it 'creates a player' do
        expect(player.nil?).to eql(false)
    end


    it 'has a name' do
        expect(player_name).to eql('John')
    end

    it 'has a symbol' do
        expect(player.symbol).to eql('X')
    end
end