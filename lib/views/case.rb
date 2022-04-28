# on a un smbol, un nom
class BordCase

    attr_accessor :content, :aligned, :coordinate, :row, :column

def initialize(coordinate)
    @content = " "
    @coordinate = coordinate
    @column
    @row
end 


def change_content(symbol)
    @content = symbol
end


def is_occupied?
    content != " "
end

end