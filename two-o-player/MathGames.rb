require_relative 'players'
require_relative 'questions'

p1_name = "P1 Player"

p2_name = "P2 Player"

player1 = Players.new(p1_name)
player2 = Players.new(p2_name)

current_player = 1

while (player1.lifestatus && player2.lifestatus) do

  player = (current_player.odd?) ? player1 : player2

  question = Ask.new()

  puts "-----------NEW TURN-----------"

  puts "#{player.name}: #{question.print}"


  answer = gets.chomp.to_i

  if answer == question.answer
  puts "#{player.name}: Yes! you are correct!"
  puts "#{player1.name} #{player1.lives}/3 lives vs #{player2.name} #{player2.lives}/3 lives"
  else
    player.lives -= 1
    puts "#{player.name}: Seriously? No!"
    puts "#{player1.name} #{player1.lives}/3 vs #{player2.name} #{player2.lives}/3 lives"
  end
  current_player = current_player + 1
end

if player1.lives == 0
   puts "#{player2.name} wins with a score of #{player2.lives}/3"
elsif player2.lives == 0
   puts "#{player1.name} wins with a score of  #{player1.lives}/3"
end

puts "Game is over. Good bye!"
