class Player
    attr_reader :name, :symbol

    def initialize
        @name = name
        @symbol = symbol
    end
end

class Board
    def initialize
        @state = ['','','','','','','','','','']
        @move = 0
    end

    def show_board
        p "#{@state[1]} | #{@state[2]} | #{@state[3]}"
        p "---|---|---"
        p "#{@state[4]} | #{@state[5]} | #{@state[6]}"
        p "---|---|---"
        p "#{@state[7]} | #{@state[8]} | #{@state[9]}"
    end

    def is_move_valid? current_position
        @state[current_position].is_a? Integer
    end

    def add_move(position,symbol)
        @state[position] = symbol
        is_move_valid? position
        @move += 1

        if win?
            1
        elsif draw?
            -1
        else 
            0
        end
    end

    private
        def win?
            winning_diagonal? || winning_row? || winning_column?
        end

        def winning_diagonal
            left_diagonal = [@state[1], @state[5], @state[9]].uniq.length
            right_diagonal = [@state[3], @state[5], @state[7]].uniq.length
            [left_diagonal, right_diagonal].include? 1
        end

        def winning_column?
            left_column = [@state[1], @state[4], @state[7]].uniq.length
            right_column = [@state[3], @state[6], @state[9]].uniq.length
            center_column = [@state[2], @state[5], @state[8]].uniq.length

            [left_column, center_column, right_column].include? 1
        end

        def winning_row?
            top_row = [@state[1], @state[2], @state[3]].uniq.length 
            center_row = [@state[4], @state[5], @state[6]].uniq.length 
            bottom_row = [@state[7], @state[8]], @state[9]].uniq.length 
            [top_row, bottom_row, center_column].include? 1
        end 

end

