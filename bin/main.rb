class Main
  def initialize
    @player1 = Player.new('X')
    puts 'Player 1, enter your name: '
    @player1.name = gets.chomp

    @player2 = Player.new('O')
    puts 'Player 2 enter your name: '
    @player2.name = gets.chomp

    puts '@player1.name you're up first, please choose a number on the board: '
    new_move
  end

def new_move
  move = gets.chomps
  @game.board(move)
  result
end

def result
if result == false
  new_move
else puts '{ wins!}'
  new_game
end

def new_game
  puts 'Would you like to play a new game? Y/N?'
  answer = gets.chomp.upcase

  if answer == 'Y'
    Main.new_game
  else answer == 'N'
    puts 'Thanks for playing!'
  end
end
end

Main.new
