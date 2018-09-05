require './lib/space.rb'
require 'pry'

  @board = []

  def build_board
  4.times {@board << [Space.new, Space.new, Space.new, Space.new]}
  end

puts "==========="
puts ". 1 2 3 4"
puts "A#{@board}\nB#{@board}\nC#{@board}\nD#{@board}".tr('"', '')


p A1 = @board[0][0]
# "A2" = @board[0][1]
# "A3" = @board[0][2]
# "A4" = @board[0][3]
# "B1" = @board[1][0]
# "B2" = @board[1][1]
# "B3" = @board[1][2]
# "B4" = @board[1][3]
# "C1" = @board[2][0]
# "C2" = @board[2][1]
# "C3" = @board[2][2]
# "C4" = @board[2][3]
# "D1" = @board[3][0]
# "D2" = @board[3][1]
# "D3" = @board[3][2]
# "D4" = @board[3][3]

def rows
  {
    :row_a => assign_spaces.group_by do |key, value|
      key.include?("A")
    end

    # :row_b => board[1],
    # :row_c => board[2],
    # :row_d => board[3]
  }
end

def columns
  column_1 = board[0..3][1]
  column_2 = board[0..3][1]
  column_3 = board[0..3][1]
  column_4 = board[0..3][1]
end
