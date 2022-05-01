class Board

    @@list= ["A1", "A2", "A3","B1", "B2", "B3","C1", "C2", "C3"]

    attr_accessor :board_case

    def initialize
        @bord_case = []
        for i in (0..9) do
            new_case = BordCase.new(@@list[i], i)
            @bord_case << new_case
        end
    end

    def display
        puts
        puts " "*6  + "1" + " "*5  + "2" + " "*5 + "3"
        puts " "*4 +"-"*19
        puts " " +"A" + " "*2+ "|" + " "*2 + get_symbol("A1") + " "*2 + "|" + " "*2 + get_symbol("A2") + " "*2 + "|" + " "*2 + get_symbol("A3") + " "*2 + "|"
        puts " "*4 + "-"*19
        puts " " +"B" + " "*2+ "|" + " "*2 + get_symbol("B1") + " "*2 + "|" + " "*2 + get_symbol("B2") + " "*2 + "|" + " "*2 + get_symbol("B3") + " "*2 + "|"
        puts " "*4 + "-"*19
        puts " "+"C" + " "*2+ "|" + " "*2 + get_symbol("C1") + " "*2 + "|" + " "*2 + get_symbol("C2") + " "*2 + "|" + " "*2 + get_symbol("C3") + " "*2 + "|"
        puts " "*6 + "-"*19+"\n"
    end

    def get_symbol(coordinate)
        for item in @bord_case
            if item.coordinate == coordinate
                return item.content
            end
        end
    end

    def get_case(coordinate)
        @bord_case.each do |item|
                if item.coordinate == coordinate
                    return item
                end
        end
    end

    def is_case_available?(coordinate)
        if get_case(coordinate).is_occupied? 
            puts "Cette case est occupée"
            return false
        else
            return true
        end
    end

    def choose_case(player, coordinate)
        get_case(coordinate).change_content(player.symbol)
    end

    def is_victory?(coordinate)
        check_row(coordinate) || check_column(coordinate) ? true : false
    end

       
    def check_row(coordinate)
        if ["A1", "A2", "A3"].include? coordinate
            puts "a"
            if get_symbol("A1") == get_symbol("A2") && get_symbol("A2") == get_symbol("A3")
            return true
            end
        end
        if ["B1", "B2", "B3"].include? coordinate
            puts "b"
            if get_symbol("B1") == get_symbol("B2") && get_symbol("B2") == get_symbol("B3")
                return true
            end
        end
        if ["C1", "C2", "C3"].include? coordinate
            puts "c"
            if  get_symbol("C1") == get_symbol("C2") && get_symbol("C2") == get_symbol("C3") 
                return true
            end
        end
        return false
    end

    def check_column(coordinate)
        if ["A1", "B1", "C1"].include? coordinate
            puts "1"
            if get_symbol("A1") == get_symbol("C1") && get_symbol("C1") == get_symbol("B1")
                return true
            end
        end
        if ["A2", "B2", "C2"].include? coordinate
            puts "2"
            if get_symbol("A2") == get_symbol("B2") && get_symbol("B2") == get_symbol("C2")
                return true
            end
        end
        if ["A3", "B3", "C3"].include? coordinate
            puts "3"
            if  get_symbol("A3") == get_symbol("B3") && get_symbol("B3") == get_symbol("C3") 
                return true
            end
        end
        return false
    end
        # puts get_case(coordinate)
        # i = get_case(coordinate).index
        # puts i
        # @board_case.each do |board_case|
        #     if !board_case.is_occupied?
        #         case bord_case.index
        #         when (0..2)
        #             @board_case[0].content == @board_case[1].content && @board_case[1].content == @board_case[2].content ? true : false
        #         when (3..5)
        #             @board_case[3].content == @board_case[5].content && @board_case[5].content == @board_case[5].content ? true : false
        #         else
        #             @board_case[6].content == @board_case[7].content && @board_case[7].content== @board_case[8].content ? true : false
        #         end
        #     else
        #         return false
        #     end
        # end
end

