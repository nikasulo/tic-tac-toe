require '../lib/game.rb'

<<<<<<< HEAD
describe '::Board' do
  let(:board) {Board.new}
  let(:show_board) {board.show_board}
  
  describe '#show_board' do
    it 'prints the board' do
      board.show_board
      expect(board.first_row).to eql(' 1 | 2 | 3 ')
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

  describe "#add_move" do 
    it 'adds moves' do
      expect(board.add_move(1, 'X')).to be 0
    end
    
    it 'updates the state' do
      board.add_move(1, 'X')
      expect(board.state[1]).to eql("X")
    end
  end
end 
