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
    board = Board.new
    computer = Computer.new(board)
    assert_instance_of Computer, computer
  end

  def test_computer_starts_with_two_ships
    board = Board.new
    computer = Computer.new(board)
    assert_equal 2, computer.ships
  end

  def test_computer_can_place_ship_horizontally_without_repeating_columns
    board = Board.new
    computer = Computer.new(board)

    board.build_board
    board.horizontal_board

    assert_equal 3,
   computer.place_ship_horizontally(3, board.horizontal_board).flatten.count

  end

  def test_computer_can_place_ship_vertically_without_repeating_columns
    board = Board.new
    computer = Computer.new(board)

    board.build_board
    board.vertical_board

    assert_equal 3, computer.place_ship_vertically(3, board.vertical_board).flatten.count

  end

  # def test_space_on_board_is_no_longer_empty_after_placing_ship
  #   board = Board.new
  #   computer = Computer.new(board)
  #
  #   board.build_board
  #
  #
  #   computer.place_ship_horizontally(3, board.horizontal_board)
  #
  #   computer.place_ship_vertically(2, board.vertical_board)
  #
  #   assert_instance_of Space, computer.place_ships(board)
  # end

end
