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
        get_case(coordinate).is_occupied? ? false : true
    end

    def choose_case(player, coordinate)
        get_case(coordinate).change_content(player.symbol)
    end

    def is_victory?(coordinate)
        check_row(coordinate) || check_column(coordinate) || check_diag(coordinate) ? true : false
    end

       
    def check_row(coordinate)
        if ["A1", "A2", "A3"].include? coordinate
            if get_symbol("A1") == get_symbol("A2") && get_symbol("A2") == get_symbol("A3")
            return true
            end
        elsif ["B1", "B2", "B3"].include? coordinate
            if get_symbol("B1") == get_symbol("B2") && get_symbol("B2") == get_symbol("B3")
                return true
            end
        else #["C1", "C2", "C3"].include? coordinate
            if  get_symbol("C1") == get_symbol("C2") && get_symbol("C2") == get_symbol("C3") 
                return true
            end
        end
        return false
    end

    def check_column(coordinate)
        if ["A1", "B1", "C1"].include? coordinate
            if get_symbol("A1") == get_symbol("C1") && get_symbol("C1") == get_symbol("B1")
                return true
            end
        elsif ["A2", "B2", "C2"].include? coordinate
            if get_symbol("A2") == get_symbol("B2") && get_symbol("B2") == get_symbol("C2")
                return true
            end
        else
            if  get_symbol("A3") == get_symbol("B3") && get_symbol("B3") == get_symbol("C3") 
                return true
            end
        end
        return false
    end

    def check_diag(coordinate)
        if ["A1", "B2", "C3"].include? coordinate
            if get_symbol("A1") == get_symbol("B2") && get_symbol("B2") == get_symbol("C3")
                return true
            end
        elsif ["A3", "B2", "C1"].include? coordinate
            if get_symbol("A3") == get_symbol("B2") && get_symbol("B2") == get_symbol("C1")
                return true
            end
        else
            return false
        end
    end

end

