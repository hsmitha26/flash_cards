require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require './lib/turns'
#require 'pry'

class TurnTest < Minitest::Test

  def test_it_exists
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_instance_of Turn, turn
  end

  def test_it_has_a_guess
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    assert_equal "Juneau", turn.guess
  end

  def test_if_guess_correct
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn_1 = Turn.new("Austin", card)
    assert_equal true, turn.correct?
    assert_equal false, turn_1.correct?
  end

  def test_if_feedback_returns_correct_answer
    card = Card.new("What is the capital of Alaska?", "Juneau", :Geography)
    turn = Turn.new("Juneau", card)
    turn_1 = Turn.new("Austin", card)
    assert_equal "Correct!", turn.feedback
    assert_equal "Incorrect!", turn_1.feedback
  end

end
