require 'pry'
require './lib/board'
class Computer
    attr_reader :ships
  def initialize
    @ships = 2
    @board = Board.new.board
  end

#   def place_random_ships(length, board)
#
#
#   end
#
  def place_ship_horizontally(length, board)
    location = []
    row = board.keys.sample
    columns = (1...4).to_a.shuffle
    while location.count < length*2 do
      location << row
      random_column = columns.pop.to_s
      location << random_column
    end
    location
  end
end
