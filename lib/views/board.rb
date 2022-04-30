class Board

@@list= [["A1", "A2", "A3"] ,["B1", "B2", "B3"], ["C1", "C2", "C3"]]

    def initialize
        @bord_case = []
            for i in (0..2) do
                for j in (0..2) do
                    new_case = BordCase.new(@@list[i][j])
                    new_case.column = j
                    new_case.row = i
                    @bord_case << new_case
                end
            end
    end

    def display
        puts
        puts " "*12  + "1" + " "*5  + "2" + " "*5 + "3"
        puts " "*10 +"-"*19
        puts " "*7 +"A" + " "*2+ "|" + " "*2 + get_symbol("A1") + " "*2 + "|" + " "*2 + get_symbol("A2") + " "*2 + "|" + " "*2 + get_symbol("A3") + " "*2 + "|"
        puts " "*10 + "-"*19
        puts " "*7 +"B" + " "*2+ "|" + " "*2 + get_symbol("B1") + " "*2 + "|" + " "*2 + get_symbol("B2") + " "*2 + "|" + " "*2 + get_symbol("B3") + " "*2 + "|"
        puts " "*10 + "-"*19
        puts " "*7 +"C" + " "*2+ "|" + " "*2 + get_symbol("C1") + " "*2 + "|" + " "*2 + get_symbol("C2") + " "*2 + "|" + " "*2 + get_symbol("C3") + " "*2 + "|"
        puts " "*10 + "-"*19
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

    def get_case_row_column(row, column)
        for item in @bord_case
            if item.column == column && item.row == row
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

    def check_row(row, player)
        list = [0, 1, 2]
        list.delete(row)
        for column in list
            if get_case_row_column(row, column).content != player.symbol
                return false
            end
        end
        return true
    end

    def check_column(column, player)
        list = [0, 1, 2]
        list.delete(column)
        for row in list
            if get_case_row_column(row, column).content != player.symbol
                return false
            end
        end
        return true
    end


end

