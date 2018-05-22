require './game.rb'

puts "welcome to Math War!"

puts "please input the two contestants names:"
print "player 1 >"

player1Name = gets.chomp

print "player 2 >"
player2Name = gets.chomp




game = Game.new(player1Name, player2Name)

game.run 





