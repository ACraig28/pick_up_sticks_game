require_relative 'class_picking_up_sticks'

def main()
  sticks_left = 0
  puts "Welcome to the picking up sticks!!"
  puts "What is your name?"
  player1 = gets.chomp.capitalize
  puts "Who is your opponent?"
  player2 = gets.chomp.capitalize
  puts "How many sticks do you want to start with? \nChoose 1-20."
  starting_stick_count = gets.chomp.to_i
  game1 = SticksGame.new(player1, player2, starting_stick_count)
  until sticks_left == 1
   begin
      puts "#{player1}, how many sticks do you want to pick up? \nChoose 1-3."
      amount_picked_up = gets.chomp.to_i
      sticks_left = game1.picking_up_sticks(amount_picked_up)
      puts "There are #{sticks_left} sticks left."
      puts "#{player2}, how many sticks do you want to pick up? \nChoose 1-3."
      amount_picked_up = gets.chomp.to_i
      sticks_left = game1.picking_up_sticks(amount_picked_up)
      puts "There are #{sticks_left} sticks left."
    rescue NegativeSticksError
      puts "You can not pick up that many sticks. Try again"
    end
  end
end

if __FILE__== $PROGRAM_NAME
  main
end
