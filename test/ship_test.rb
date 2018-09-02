require 'simplecov'
SimpleCov.start
require './lib/ship'
require 'minitest/autorun'
require 'minitest/pride'

class ShipTest < Minitest::Test
  def test_ship_exists
    ship = Ship.new([0,0])
    assert_instance_of Ship, ship
  end

  def test_ship_starts_with_placement
    ship = Ship.new([0,0])
    assert_equal [0,0], ship.placement
  end
end
