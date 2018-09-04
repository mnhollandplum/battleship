class Space
    attr_reader :empty
  def intialize
    @empty = true
  end

  def filled_by_ship
    @empty = false
  end

  def hit_by_enemy
    @empty = false
  end
end
