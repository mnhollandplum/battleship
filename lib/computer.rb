require 'pry'
class Computer
    attr_reader :ships
  def initialize
    @ships = 2
  end

  def place_ship(placement, length)
    Ship.new(placement, length)
  end

  def horizontal_placement
  end

  def vertical_placement
  end
end
