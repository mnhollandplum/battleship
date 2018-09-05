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

  def test_computer_can_place_ship_horizontally_without_repeating_columns
    computer = Computer.new
    board = Board.new

    board.build_board
    board.horizontal_board

    assert_equal 3, computer.place_ship_horizontally(3, board.horizontal_board).count
  end
end
