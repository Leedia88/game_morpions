class Header

def initialize
    # puts "     ~° Bienvue sur mon jeu de morpions °~ "
    # puts "   _____                       __                     " 
    # puts "  /     \\   _________________ |__| ____   ____   ______"
    # puts " /  \\ /  \\ /  _ \\_  __ \\____ \\|  |/  _ \\ /    \\ /  ___/"
    # puts "/    Y    (  <_> )  | \\/  |_> >  (  <_> )   |  \\_____\\ "
    # puts "\\____|__  /\\____/|__|  |   __/|__|\\____/|___|  /____  >"
    # puts "        \\/             |__|                  \\/     \\/ "
    # puts
    # #http://patorjk.com/software/taag/#p=display&f=Graffiti&t=Morpions
    # puts "Qui veut commencer? Ecris le nom du joueur 1:"
    # print ">"
    # name_1 = gets.chomp
    # puts "Et puis le nom du joueur 2"
    # print ">"
    # name_2 = gets.chomp
    # @score = {@name1 => 0, @name2=> 0}
end

def display_score
    puts "-"*50
    puts " "*10 + "#{@name1} :" + @score[@name1] + "#{@name2} :" + @score[@name2]
    puts "-"*50
end

def victory(player)
    @score[player]+=1
    puts "Voulez-vous jouer une nouvelle partie ?"
    print ""
end

end