class Player

    attr_accessor :name, :symbol, :cases, :won

    def initialize(name, symbol)
        @name = name
        @symbol = symbol
        @cases=[]
        @won = false
    end

    def is_victory?
        @won
    end

end