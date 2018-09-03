require 'pry'
require './lib/board'
class Computer
    attr_reader :ships, :guesses
  def initialize
    @ships = 2
  end

  def place_random_ship
  end
end
