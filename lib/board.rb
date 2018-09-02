require 'pry'
class Board
        attr_reader :board
    def initialize
        @board = []
    end

    def build_board
    4.times {@board << [Space.new, Space.new, Space.new, Space.new]}
    end

    def board_display
      puts "==========="
      puts ". 1 2 3 4"
      puts "A #{@board}\nB #{@board}\nC #{@board}\nD #{@board}"
    end
end
