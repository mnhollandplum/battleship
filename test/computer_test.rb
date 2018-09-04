require 'pry'
require 'simplecov'
SimpleCov.start
require './lib/computer'
require './lib/board'
require './lib/ship'
require './lib/space'
require 'minitest/autorun'
require 'minitest/pride'

class ComputerTest < Minitest::Test
  def test_computer_exists
    computer = Computer.new
    assert_instance_of Computer, computer
  end

  def test_computer_starts_with_two_ships
    computer = Computer.new
    assert_equal 2, computer.ships
  end

  # def test_computer_can_randomly_place_two_ships
  #   computer = Computer.new
  #   board = Board.new
  #
  #   board.build_board
  # end

#   def test_computer_can_place_ship_horizontally
#     skip
#     computer = Computer.new
#     board = Board.new
#     ship = Ship.new(["A1", "A2"], 2)
#
#     board.build_board
#     board.assign_spaces
#
#     assert_equal (["A1", "A2"]), computer.place_ship_horizontally(2, board)
#   end
#
#   def test_computer_can_place_ship_vertically
#     computer = Computer.new
#     board = Board.new
#     ship = Ship.new(["A1", "B1"], 2)
#
#     board.build_board
#     board.assign_spaces
#
#     assert_equal (["A1", "B1"]), computer.place_ship_horizontally(2, board)
#
#   end
end
