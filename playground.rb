require './lib/space.rb'

  @board = []

  def build_board
  4.times {@board << [Space.new, Space.new, Space.new, Space.new]}
  end

puts "==========="
puts ". 1 2 3 4"
puts "A#{@board}\nB#{@board}\nC#{@board}\nD#{@board}".tr('"', '')
