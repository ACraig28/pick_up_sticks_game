class SticksGame
  attr_reader :player1, :player2, :starting_stick_count

  def initialize(player1, player2, starting_stick_count)
    @player1 = player1
    @player2 = player2
    @starting_stick_count = starting_stick_count
  end
end
