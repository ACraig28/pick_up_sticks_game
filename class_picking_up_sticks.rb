class InvalidSticksError < StandardError
end

class SticksGame
  attr_reader :player1, :player2, :starting_stick_count

  def initialize(player1, player2, starting_stick_count)
    @player1 = player1
    @player2 = player2
    if starting_stick_count > 100 || starting_stick_count < 0
      raise InvalidSticksError, "You chose an invalid number of sticks. Please try again."
    else
    @starting_stick_count = starting_stick_count
    end
  end

  def is_pick_up_amount_chosen_valid(amount_picked_up)
    sticks_left = @starting_stick_count - amount_picked_up
    amount_picked_up > 0 && amount_picked_up < 4 && sticks_left >= 0
  end


  def picking_up_sticks(amount_picked_up)
    if is_pick_up_amount_chosen_valid(amount_picked_up)
      sticks_left = @starting_stick_count - amount_picked_up
      return sticks_left
    else
      raise InvalidSticksError, "You chose an invalid number of sticks. Please try again."
      #why the msg here when you write another one with the rescue section?
    end
  end
end
