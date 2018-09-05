require 'pry'
require './lib/board'
class Computer
    attr_reader :ships
  def initialize
    @ships = 2
    #instatiate and instance of board for the computer.
  end

  # def place_random_ships(length, board)
  #   final_placement = []
  #
  #   final_placement << place_ship_horizontally(length, board)
  #
  #   final_placement << place_ship_vertically(length, board)
  #   binding.pry
  #
  #   final_placements
  # end

  def place_ship_horizontally(length, board)
    location = []
    row = board.keys.sample
    columns = (1...4).to_a.shuffle
    while location.count < length*2 do
      location << row
      random_column = columns.pop.to_s
      location << random_column
    end
    location.join.scan(/../)
  end

  def place_ship_vertically(length, board)
    location = []
    column = board.keys.sample
    rows = ("A"..."D").to_a.shuffle
    while location.count < length*2 do
        random_row = rows.pop.to_s
        location << random_row
        location << column
    end
      location.join.scan(/../)
  end

  #shoot at the players board

end
