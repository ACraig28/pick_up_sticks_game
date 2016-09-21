require_relative 'class_picking_up_sticks'
testing git hub testing git hub testing git hub 

def main()
  sticks_left = 0
  puts "Welcome to the picking up sticks!!"
  puts "What is your name?"
  player1 = gets.chomp.capitalize
  puts "Who is your opponent?"
  player2 = gets.chomp.capitalize
  puts "How many sticks do you want to start with? \nChoose 1-100."
  starting_stick_count = gets.chomp.to_i
  begin
    game1 = SticksGame.new(player1, player2, starting_stick_count)
    until sticks_left == 1
      puts "#{player1}, how many sticks do you want to pick up? \nChoose 1-3."
      amount_picked_up = gets.chomp.to_i
      sticks_left = game1.picking_up_sticks(amount_picked_up)
      puts "There are #{sticks_left} sticks left."
      if sticks_left == 0
        puts "You lose."
        break
      end
      puts "#{player2}, how many sticks do you want to pick up? \nChoose 1-3."
      amount_picked_up = gets.chomp.to_i
      sticks_left = game1.picking_up_sticks(amount_picked_up)
      puts "There are #{sticks_left} sticks left."
      if sticks_left == 0
        puts "You lose."
        break
      end
    end
    rescue InvalidSticksError
      puts "That is an invalid number of sticks. Try again"
  end
end

if __FILE__== $PROGRAM_NAME
  main
end

# says "sticks" even when one is left. need to create won method. Invalid string error currently causing flow to exit loop. Broke the picking up sticks method so calculate isn't consistenly happening and isn't always right when it does happen.
