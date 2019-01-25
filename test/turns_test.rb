require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turns'
#require 'pry'

class TurnsTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turns.new("Juneau", card)
    assert_instance_of Turns, turn
  end


end
