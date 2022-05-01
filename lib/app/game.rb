class Game

    def initialize(player_1, player_2)
        @board = Board.new
        puts "-"*50
        puts "C'est parti pour une nouvelle partie de morpion :)"
        puts "-"*50
        @player_1 = player_1
        @player_2 = player_2
    end

    def ask_case(player)
        loop do
            puts "#{player.name}, quelle case veux-tu jouer?"
            print ">"
            chosen_case = gets.chomp
            if ["A1", "A2", "A3","B1", "B2", "B3","C1", "C2", "C3"].include? chosen_case
                if @board.is_case_available?(chosen_case)
                    return chosen_case
                else
                    ask_case(player)
                end
                break
            end
            puts "Oups, mauvais saisie! le format demandé est du type 'A2'"
        end
    end

    def turn(player)
        print "-"*50 + "\n"
        print "    " + "#{@player_1.name} X" + " "*12 + "#{@player_2.name} O" +"\n"
        print "-"*50 + "\n"
        @board.display
        chosen_case = ask_case(player)
        @board.choose_case(player, chosen_case)
        system('clear')
        if @board.is_victory?(chosen_case)
            player.won = true
        end
    end

    def display_score
        @header.display
    end

    def play
        number_turns = 1
        turn(@player_1)
        while is_still_ongoing? && number_turns < 9
            turn(@player_2)
            number_turns +=1
            if is_still_ongoing?
                turn(@player_1)
                number_turns +=1
            end
        end
        @board.display
        return who_is_victory?
    end

    def who_is_victory?
        if @player_1.is_victory?
            return @player_1
        elsif @player_2.is_victory?
            return @player_2
        else
            return nil
        end
    end

    def is_still_ongoing?
        !@player_1.is_victory? && !@player_2.is_victory?
    end

    def game_ending(player)
        if player == nil
            puts "Dommage!! Aucun de vous n'a gagné et ne remporte de point! :) "
        else
            puts "BRAVOO! #{player.name} a gagné!!!"
        end
    end

end