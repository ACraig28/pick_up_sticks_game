class NegativeSticksError < StandardError
end

class SticksGame
  attr_reader :player1, :player2, :starting_stick_count

  def initialize(player1, player2, starting_stick_count)
    @player1 = player1
    @player2 = player2
    @starting_stick_count = starting_stick_count
  end

  def picking_up_sticks(amount_picked_up)
    sticks_left = @starting_stick_count -= amount_picked_up
    if sticks_left < 0
      @starting_stick_count = sticks_left += amount_picked_up
      raise NegativeSticksError, "Error"
    else
      return sticks_left
    end
  end
end
