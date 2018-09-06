require 'pry'
class Space
    attr_accessor :empty
  def initialize(empty=true)
    @empty = empty
    @state = nil
  end

  def filled_by_ship
    if true
      @empty = false
    end
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
