# on a un smbol, un nom
class BordCase

    attr_accessor :content, :coordinate, :index

def initialize(coordinate, index)
    @content = " "
    @coordinate = coordinate
    @index = index

end 


def change_content(symbol)
    @content = symbol
end


def is_occupied?
    content != " "
end

end