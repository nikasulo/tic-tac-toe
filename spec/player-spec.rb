require '../lib/game'

describe '::Player' do
    let(:player) {Player.new("John", 'X')}
    let(:player_name) {player.name}
    let(:player_symbol) {player.symbol}

    it 'creates a player' do
        expect(player.nil?).to eql(false)
    end

end