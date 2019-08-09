require '../lib/game.rb'

describe '::Board' do
  let(:board) {Board.new}
  let(:show_board) {board.show_board}
  
  describe '#show_board' do
    it 'prints the board' do
      expect(show_board).to eql(' 7 | 8 | 9 ')
    end
  end

end 
