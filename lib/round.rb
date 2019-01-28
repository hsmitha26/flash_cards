class Round

  attr_reader :deck, :turns
  def initialize(deck)
    @deck = deck
    @turns = []
    @turn_number = 0
  end

  def current_card
    @deck[turn_number]
  end

  def take_turn
    @turn_number += 1
  end
  
end
