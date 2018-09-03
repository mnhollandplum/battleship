require 'pry'
require './lib/board'
class Computer
    attr_reader :ships, :guesses
  def initialize
    @ships = 2
  end

  def place_random_ships(length, board)
  end

  def place_ship_horizontally(length, board)
  end

  def place_ship_vertically(length, board)
  end
end
