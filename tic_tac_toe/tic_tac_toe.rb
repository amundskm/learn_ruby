class TicTacToe
    attr_accessor :sections

    def initialize
        @sections = [0,1,2,3,4,5,6,7,8]   
    end

    def board
        puts " #{sections[0]} | #{sections[1]} | #{sections[2]} 
___|___|___
 #{sections[3]} | #{sections[4]} | #{sections[5]} 
___|___|___
 #{sections[6]} | #{sections[7]} | #{sections[8]} \n"
    end

    def test_input(pos, player)
        int = pos.to_i
        if int >= 0 && int <= 8
            if sections[int] != "X" || sections[int] != "O"
                sections[int] = "X" if player == 1
                sections[int] = "Y" if player == 2
            end
            return true
        else
            return false
        end
    end

    def continue
        # Checks if there are 3 X's or 3 O's in a row
        combinations =[[sections[0],sections[1],sections[2]],
        [sections[3],sections[4],sections[5]],
        [sections[6],sections[7],sections[8]],
        [sections[0],sections[3],sections[6]],
        [sections[1],sections[4],sections[7]],
        [sections[2],sections[5],sections[8]],
        [sections[0],sections[4],sections[8]],
        [sections[6],sections[4],sections[2]]]

        combinations.each do |set|
             finish = set.all? {|x| x == set[0]}
             if finish
                return "win"
             end
        end

        if combinations.all? {|x| (x == "X") || (x =="Y")}
            return "tie"
        end
        
        return false
    end
end

class TicInput
    attr_accessor :p1_score, :p2_score
    def initialize 
        @p1_score = 0
        @p2_score = 0
    end
    def main()
        @@new_game = TicTacToe.new
        while true
           
            @@new_game.board
            while true
                puts "Player 1 what position (0-8) would you like to play and 'X': "
                input2 = gets.chomp
                if @@new_game.test_input(input2, 1) == false
                    puts "You have entered a position that is not avaiable. Please try again."
                else
                    break
                end
            end
           
            if @@new_game.continue == "win"
                winner = 1
                break
            elsif @@new_game.continue == "tie"
                winner = 0
                break
            end


            @@new_game.board

            while true
                puts "Player 2 what position (0-8) would you like to play and 'O': "
                input2 = gets.chomp
                if @@new_game.test_input(input2, 2) == false
                    puts "You have entered a position that is not avaiable. Please try again."
                else
                    break
                end
            end

            if @@new_game.continue
                winner = 2
                break
            elsif @@new_game.continue == "tie"
                winner = 0
                break
            end
        end

        new_scores = score(winner)
        puts "Would you like to play again? y/n"
        while true
            input = gets.chomp
            if input == "y"
                main()
            elsif input == "n"
                "Good Bye"
                return
            else
                puts "That is not a 'y' or 'n'. Please enter 'y' to play a new game"
            end
        end
            

    end

    def score(win)
        if win > 0
            puts "Good game. Player #{win} wins. Player 1 has won #{p1_score} times and Player 2 has won #{p2_score} times."
            @p1_score += 1 if win == 1
            @p2_score += 1 if win == 2
        else 
            puts "Good game. It was a tie. the score is still Player 1 has won #{p1_score} times and Player 2 has won #{p2_score} times. "
        end

    end
end

play = TicInput.new
play.main