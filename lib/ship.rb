require 'pry'
class Ship
    attr_reader :length
  def initialize(length)
    @length = length
  end

  def ship_hit
    @length -= 1
  end

  def ship_sunk
    @length == 0
  end

  def location_on_board(length, board)
    board.flatten.sample(length)
    binding.pry
  end

end
