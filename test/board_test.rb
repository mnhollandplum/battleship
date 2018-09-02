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

end
