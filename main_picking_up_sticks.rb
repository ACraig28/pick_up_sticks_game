require_relative 'class_picking_up_sticks'

def main()
  puts "Welcome to the picking up sticks!!"
  puts "What is your name?"
  player1 = gets.chomp
  puts "Who is your opponent?"



  bob = SticksGame.new("Bob", "Sally", 150)
end

if __FILE__== $PROGRAM_NAME
  main
end
