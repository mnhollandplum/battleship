class Space
    attr_reader :hit, :empty
  def intialize
    @empty = true
    @hit = false
  end

  def check_for_hit
    if @hit == true
      "H"
    else
      "M"
    end
  end
end
