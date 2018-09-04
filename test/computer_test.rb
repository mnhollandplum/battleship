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

  def test_computer_can_randomly_place_two_ships
    computer = Computer.new
    board = Board.new
    # ship = Ship.new([0], 2)

    board.build_board

    assert_instance_of Ship, computer.place_random_ships(2, board)
  end

  def test_computer_can_place_ship_horizontally
    computer = Computer.new
    board = Board.new
    ship = Ship.new([0,0], 2)

    board.build_board
  end

  def test_computer_can_place_ship_vertically
  end
end
