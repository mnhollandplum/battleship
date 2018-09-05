require 'pry'
require './lib/board'
class Computer
    attr_reader :ships, :board, :ship_1, :ship_2
  def initialize(board)
    @ships = 2
    @board = board
    @ship_1 = []
    @ship_2 = []
  end

  def place_ship_horizontally(length, board)
    location = []
    row = board.keys.sample
    columns = (1...4).to_a.shuffle
    while location.count < length*2 do
      location << row
      random_column = columns.pop.to_s
      location << random_column
    end
  @ship_1 << location.join.scan(/../)
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
    @ship_2 << location.join.scan(/../)
  end
end
