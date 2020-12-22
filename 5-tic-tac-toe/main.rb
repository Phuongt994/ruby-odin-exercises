    # TODO: improve empty cell displays, add board display, better win catch
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

require "./board"

class Main 
    def initialize
        puts "Welcome!"
    end

    def start_game
        board = Board.new()

        win_condition = false
        until win_condition == true 
            puts "P1 please place your X via index number"
            player_x_move = gets.to_i
            board.add_move(player_x_move, "x")
            win_condition = board.check_win_condition
            
            puts "P2 please place your O via index number"
            player_o_move = gets.to_i
            board.add_move(player_o_move, "o")
            win_condition = board.check_win_condition
        end

        if win_condition == true
            puts "END GAME!"
            p board.board
        end
    end
end

game = Main.new()
game.start_game