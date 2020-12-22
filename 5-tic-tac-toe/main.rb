require "./board"
    # INITIALISE
    # request an empty board with 3x3 (BOARD: CLASS / BOARD::ARRAY-CONSTRUCTOR)
    # win condition defined (BOARD::WINCONDITION-METHOD)
    # P1 P2 assigned to X O (BOARD::P1P2-CONSTRUCTOR)
    # START
    # ask P1: move (BOARD:: STARTGAME-METHOD)
    # save move to board
    # check win condition ? END : CONTINUE
    # ask P2: move
    # save move to board
    # ..continue til END
    # END 
    # announce winner (BOARD:: ENDGAME-METHOD)
class Main 
    def initialize
        @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @player_x = ""
        @player_o = ""
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

    def start_game
        win_condition = false
        until win_condition == true 
            puts "P1 please place your X via index number"
            player_x_move = gets.to_i
            @board[player_x_move] = "x"
            win_condition = check_win_condition
            
            puts "P2 please place your O via index number"
            player_o_move = gets.to_i
            @board[player_o_move] = "o"
            win_condition = check_win_condition
        end

        if win_condition == true
            puts "END GAME!"
            p @board
        end
    end
end

game = Main.new()
game.start_game