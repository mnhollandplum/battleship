require 'pry'
class Board
    attr_reader :board
  def initialize
    @board = []
  end

  def build_board
    4.times {@board << [Space.new, Space.new, Space.new, Space.new]}
  end

  def board_display
    puts "==========="
    puts ".  1 2 3 4"
    puts "A #{@board}\nB #{@board}\nC #{@board}\nD #{@board}".tr('"', '')
  end

  def assign_spaces
  {
    "A1"=>@board[0][0], "A2"=>@board[0][1], "A3"=>@board[0][2], "A4"=>@board[0][3], "B1"=>@board[1][0], "B2"=>@board[1][1], "B3"=>@board[1][2],
    "B4"=>@board[1][3],
    "C1"=>@board[2][0], "C2"=>@board[2][1], "C3"=>@board[2][2],
    "C4"=>@board[2][3],
    "D1"=>@board[3][0], "D2"=>@board[3][1], "D3"=>@board[3][2],
    "D4"=>@board[3][3],
  }
  end

end
