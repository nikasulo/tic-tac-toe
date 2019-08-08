class Game
    def initialize
        p 'Player 1, enter your name: '
        @player1 = Player.new(gets.chomp, 'X')
        p 'Player 2 enter your name: '
        @player2 = Player.new(gets.chomp, 'O')
        @board = Board.new
    end
end