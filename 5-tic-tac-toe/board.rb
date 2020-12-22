class Board 
    attr_reader :board
    def initialize
        @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @player_x = ""
        @player_o = ""
    end

    def add_move(index, move)
        @board[index] = move
    end

    def check_win_condition
        if (@board[0] === @board[1] && @board[1] === @board[2]) || 
            (@board[3] === @board[4] && @board[4] === @board[5]) ||
            (@board[6] === @board[7] && @board[7] === @board[8]) ||
            (@board[0] === @board[3] && @board[3] === @board[6]) ||
            (@board[1] === @board[4] && @board[4] === @board[7]) ||
            (@board[2] === @board[5] && @board[5] === @board[8]) ||
            (@board[0] === @board[4] && @board[4] === @board[8]) ||
            (@board[1] === @board[4] && @board[4] === @board[7]) ||
            (@board[2] === @board[4] && @board[4] === @board[6]) 
            return true
        else
            return false
        end   
    end

    # def start_game
    #     win_condition = false
    #     until win_condition == true 
    #         puts "P1 please place your X via index number"
    #         player_x_move = gets.to_i
    #         @board[player_x_move] = "x"
    #         win_condition = check_win_condition
            
    #         puts "P2 please place your O via index number"
    #         player_o_move = gets.to_i
    #         @board[player_o_move] = "o"
    #         win_condition = check_win_condition
    #     end

    #     if win_condition == true
    #         puts "END GAME!"
    #         p @board
    #     end
    # end
end