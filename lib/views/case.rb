class BordCase

    attr_accessor :content, :coordinate

def initialize(coordinate, index)
    @content = " "
    @coordinate = coordinate
end 


def change_content(symbol)
    @content = symbol
end


def is_occupied?
    content != " "
end

end