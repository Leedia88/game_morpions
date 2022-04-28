class Game

    def initialize
        @board = Board.new
        puts "Bonjour, quel est le nom du joueur 1?"
        print ">"
        name_1 = gets.chomp
        puts "Bonjour, quel est le nom du joueur 2?"
        print ">"
        name_2 = gets.chomp
        @player_1 = Player.new(name_1, "X")
        @player_2 = Player.new(name_2, "O")
        @header = Header.new(@player_1, @player_2)
    end

    def ask_case(player)
        loop do
            puts "#{player.name}, quelle case voulez vous jouer?"
            print ">"
            chosen_case = gets.chomp
            if ["A1", "A2", "A3","B1", "B2", "B3","C1", "C2", "C3"].include? chosen_case
                break
                puts chosen_case
                puts "je suis dans le ask case"
                return chosen_case
            end
        end
    end

    def turn(player)
        chosen_case_string = ask_case(player)
        @board.choose_case(player, chosen_case_string)
        @board.display
        puts
        is_victory?(@board.get_case(chosen_case), player)
        # @board.is_victory?(player, chosen_case)
    end

    def display_score
        @header.display
    end

    def play
        puts "-"*50
        puts "C'est parti pour une nouvelle partie de morpion :)"
        @board.display
        while is_still_ongoing?
            turn(@player_1)
            turn(@player_2)
        end
    end

    def is_victory?(bord_case, player)
        @board.check_row(bord_case.row, player)
        puts "lo"
        @board.check_column(bord_case.column, player)
    end

    def is_still_ongoing?
        !@player_1.is_victory? && !@player_2.is_victory?
    end


end