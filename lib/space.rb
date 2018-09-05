require 'pry'
class Space
    attr_reader :empty
  def initialize
    @empty = true
    @state = nil
  end

  def filled_by_ship
    @empty = false
  end

  def shot_by_enemy
    if @empty == true
      @state = "M"
      @empty = false
    elsif @empty == false
      @state = "H"
    else
      puts "please choose a position on the board"
    end

  end
end
