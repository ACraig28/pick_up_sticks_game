require_relative 'class_picking_up_sticks'

def main()
  puts "Welcome to the picking up sticks!!"
  puts "What is your name?"
  player1 = gets.chomp
  puts "Who is your opponent?"
  player2 = gets.chomp
  puts "How many sticks do you want to start with? \nChoose 1-20."
  starting_stick_count = gets.chomp
  game1 = SticksGame.new(player1, player2, starting_stick_count)
end

if __FILE__== $PROGRAM_NAME
  main
end
