class Game

    def initialize
        @board = Board.new
        puts "-"*50
        puts "C'est parti pour une nouvelle partie de morpion :)"
        puts "-"*50
        puts
        puts "Qui veut commencer? Ecris le nom du joueur 1:"
        print ">"
        name_1 = gets.chomp
        puts "Et puis le nom du joueur 2"
        print ">"
        name_2 = gets.chomp
        @player_1 = Player.new(name_1, "X")
        @player_2 = Player.new(name_2, "O")
        @header = Header.new(@player_1, @player_2)
    end

    def ask_case(player)
        loop do
            puts "#{player.name}, quelle case veux-tu jouer?"
            print ">"
            chosen_case = gets.chomp
            if ["A1", "A2", "A3","B1", "B2", "B3","C1", "C2", "C3"].include? chosen_case
                return chosen_case
                break
            end
            puts "Oups, mauvais saisie! le format demandé est du type 'A2'"
        end
    end

    def turn(player)
        chosen_case_coordinate = ask_case(player)
        if @board.is_case_available?(chosen_case_coordinate)
            @board.choose_case(player, chosen_case_coordinate)
            @board.display
            puts
            if is_victory?(@board.get_case(chosen_case_coordinate), player)
            player.won = true
            end
        else
            turn(player)
        end
    end

    def display_score
        @header.display
    end

    def play
        @board.display
        number_turns = 0
        while is_still_ongoing? && number_turns <= 10
            turn(@player_1)
            number_turns +=1
            if is_still_ongoing?
                turn(@player_2)
                number_turns +=1
            end
        end
        if @player_1.is_victory?
            return @player_1
        elsif @player_2.is_victory?
            return @player_2
        else
            return nil
        end
    end

    def is_victory?(bord_case, player)
        if @board.check_row(bord_case.row, player)
            return true
        end
        if @board.check_column(bord_case.column, player)
            return true
        end
        return false
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