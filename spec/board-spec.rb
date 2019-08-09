require '../lib/game.rb'

describe '::Board' do
  let(:board) {Board.new}
  let(:show_board) {board.show_board}
  
  describe '#show_board' do
    it 'prints the board' do
      expect(show_board).to eql(' 7 | 8 | 9 ')
    end
  end

  describe "#is_move_valid?" do

    it 'accepts valid moves' do
      expect(board.is_move_valid? 1).to eql(true)
    end

    it 'rejects invalid moves' do
      expect(board.is_move_valid? 'a').to eql(false)
    end
  end
end 
