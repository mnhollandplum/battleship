class Space
    attr_reader :hit, :empty
  def intialize
    @empty = true
    @hit = false
  end

  def check_for_hit
     @hit
  end
end
