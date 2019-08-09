require '.lib/game.rb'

describe '#show_board' do
  it 'prints the arrangment of the board' do
    board = Board.center_rowoutput = board.show_board
    expect (@state).to eql(Array(1..9))
  end

  it 'does not print the arrangement of the board' do
    expect (@state).not_to eql(Array(1..9))
  end

end 
