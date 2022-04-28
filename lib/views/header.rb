class Header

def initialize(player_1, player_2)
    @name1 = player_1.name
    @name2 = player_2.name
    @score = {@name1 => 0, @name2=> 0}
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