require 'pry'
require 'simplecov'
SimpleCov.start
require './lib/computer'
require './lib/board'
require './lib/space'
require 'minitest/autorun'
require 'minitest/pride'

class ComputerTest < Minitest::Test
  def test_computer_exists
    computer_board = Board.new
    computer = Computer.new(computer_board)
    assert_instance_of Computer, computer
  end

  def test_computer_starts_with_two_ships
    computer_board = Board.new
    computer = Computer.new(computer_board)
    assert_equal 2, computer.ships
  end

  def test_computer_can_place_ship_horizontally_without_repeating_columns
    computer_board = Board.new
    computer = Computer.new(computer_board)

    computer_board.build_board
    computer_board.horizontal_board

    assert_equal 3,
   computer.place_ship_horizontally(3, computer_board.horizontal_board).flatten.count

  end

  def test_computer_can_place_ship_vertically_without_repeating_columns
    computer_board = Board.new
    computer = Computer.new(computer_board)

    computer_board.build_board
    computer_board.vertical_board

    assert_equal 3, computer.place_ship_vertically(3, computer_board.vertical_board).flatten.count

  end

  # def test_space_on_board_is_no_longer_empty_after_placing_ship
  #   computer_board = Board.new
  #   computer = Computer.new(computer_board)
  #
  #   computer_board.build_board
  #
  #
  #   computer.place_ship_horizontally(3, computer_board.horizontal_board)
  #
  #   computer.place_ship_vertically(2, computer_board.vertical_board)
  #
  #   assert_instance_of Space, computer.place_ships(computer_board)
  # end

end
