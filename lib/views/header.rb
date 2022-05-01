class Header

def initialize
    system('clear')
    puts "\n\n" +"     ~° Bienvue sur mon jeu de morpions °~ "
    puts "   _____                       __                     " 
    puts "  /     \\   _________________ |__| ____   ____   ______"
    puts " /  \\ /  \\ /  _ \\_  __ \\____ \\|  |/  _ \\ /    \\ /  ___/"
    puts "/    Y    (  <_> )  | \\/  |_> >  (  <_> )   |  \\_____\\ "
    puts "\\____|__  /\\____/|__|  |   __/|__|\\____/|___|  /____  >"
    puts "        \\/             |__|                  \\/     \\/ "
    puts
    #http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Morpions
    puts "Qui veut commencer? Ecris le nom du joueur 1:"
    print ">"
    name_1 = gets.chomp
    puts "Et puis le nom du joueur 2"
    print ">"
    name_2 = gets.chomp
    @player_1 = Player.new(name_1, "X")
    @player_2 = Player.new(name_2, "O")
    @score = {name_1 =>0, name_2=> 0}
end

def play
    system('clear')
    my_game = Game.new(@player_1,@player_2)
    winner = my_game.play
    my_game.game_ending(winner)
    victory(winner)
    display_score
    if  play_again? == false
        system('clear')
        play
    else
        puts "A bientôt!"
    end
end

def display_score
    print "-"*50 + "\n"
    @score.each do |key, value| 
    print "    "+"#{key}: #{value}" +" "*8 
    end
    puts "\n" + "-"*50
end

def victory(player)
    if player != nil
        @score[player.name]+=1
    end
end

def play_again?
    puts "Voulez-vous rejouer?  'O'/'N'"
    print ">"
    gets.chomp == "O" ? false : true
end

end