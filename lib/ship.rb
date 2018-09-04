require 'pry'
class Ship
    attr_reader :placement, :length
  def initialize(placement, length)
    @placement = placement
    @length = length
    binding.pry
  end

  def ship_hit
    @length -= 1
  end

  def ship_sunk
    @length == 0
  end
end
