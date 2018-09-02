require 'simplecov'
SimpleCov.start
require './lib/computer'
require 'minitest/autorun'
require 'minitest/pride'

class ComputerTest < Minitest::Test 
    def test_computer_exists
        computer = Computer.new
        assert_instance_of Computer, computer 
    end
end