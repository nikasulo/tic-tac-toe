require '../lib/game.rb'

describe '::Board' do
  let(:board) {Board.new}
  let(:show_board) {board.show_board}
  
  
  describe '#show_board' do

    it 'prints the first row' do
      show_board
      expect(board.first_row).to eql(' 1 | 2 | 3 ')
    end

    it 'prints the second row' do
      show_board
      expect(board.second_row).to eql(' 4 | 5 | 6 ')
    end

    it 'prints third row' do
      show_board
      expect(board.third_row).to eql(' 7 | 8 | 9 ')
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

  describe "#add_move" do 
    it 'adds moves' do
      expect(board.add_move(1, 'X')).to be 0
    end

    it 'rejects invalid move' do
      expect(board.add_move('r', 'X')).to be nil
    end
    
    it 'updates the state' do
      board.add_move(1, 'X')
      expect(board.state[1]).to eql("X")
    end

    it "doesn't update the state" do
      initial_state = board.state
      board.add_move('r', 'X')
      expect(board.state).to eql(initial_state)
    end
  end
end 
