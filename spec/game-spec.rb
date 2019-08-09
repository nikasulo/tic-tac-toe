require './lib/main.rb'


describe Game do
  player1 = Player.new
  player1.name = 'Eva'
  player1.figure = 'X'
  player2 = Player.new
  player2.name = 'Dami'
  player2.figure = 'O'
  game = Game.new(player1, player2)

  describe '#initialize' do
    it 'initializes it' do
      expect(player1.get_name).to eql('Eva')
    end

    it 'does not initialize game' do
      expect(player1.get_name).not_to eql('Eva')
    end
  end



end
