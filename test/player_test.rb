require 'simplecov'
SimpleCov.start
require './lib/player'
require 'minitest/autorun'
require 'minitest/pride'

class PlayerTest < Minitest::Test

  def test_player_exists
    player = Player.new
    assert_instance_of Player, player
  end

  def test_player_starts_with_two_ships
    player = Player.new
    assert_equal 2, player.ships
  end

end
