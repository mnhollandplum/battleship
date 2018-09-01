require 'simplecov'
SimpleCov.start
require './lib/ship'
require 'minitest/autorun'
require 'minitest/pride'

class ShipTest < Minitest::Test 
    def test_ship_exists
        ship = Ship.new
        assert_instance_of Ship, ship 
    end
end