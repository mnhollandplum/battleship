require 'pry'
require 'simplecov'
SimpleCov.start
require './lib/board'
require './lib/space'
require 'minitest/autorun'
require 'minitest/pride'

class SpaceTest < Minitest::Test

  def test_board_exists
    board = Board.new
    assert_instance_of Board, board
  end

  def test_board_starts_with_all_empty_spaces

    board = Board.new

    assert_equal [], board.board
  end

  def test_board_has_4_x_4_spaces
    board = Board.new

    board.build_board

    assert_equal 4, board.build_board
  end

  def test_board_is_built_up_of_spaces
    board = Board.new

    board.build_board

    assert_instance_of Space, board.board[0][0]
  end

  def test_can_assign_spaces_to_a_key
    board = Board.new

    board.build_board
    a1 = board.board[0][0]
    b2 = board.board[1][1]
    c3 = board.board[2][2]
    d4 = board.board[3][3]

    assert_equal a1, board.assign_spaces["A1"]

    assert_equal b2,
    board.assign_spaces["B2"]
    assert_equal c3,
    board.assign_spaces["C3"]
    assert_equal d4,
    board.assign_spaces["D4"]
  end

end
