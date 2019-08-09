require '../lib/game.rb'

<<<<<<< HEAD
describe '::Board' do
  let(:board) {Board.new}
  let(:show_board) {board.show_board}
  
  describe '#show_board' do
    it 'prints the board' do
      expect(show_board).to eql(' 7 | 8 | 9 ')
    end
=======
describe '#show_board' do
  it 'prints the arrangment of the board' do
    board = Board.new = board.show_board
    expect (@state).to eql(Array(1..9))
>>>>>>> f175e7e6da3f81d9b93cda3c408c8189c323a8bd
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
