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


#run the filled_by_ship_method on the keys that are returned by the computer class for the computer board to change the state of those spaces to filled_by_ship/!empty
  ##do the same for the player class
