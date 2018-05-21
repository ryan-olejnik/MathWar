require './player'

class Game
  def initialize(player1Name, player2Name)
    @player1 = Player.new(player1Name)
    @player2 = Player.new(player2Name)
    @current_players_turn = 1
  end

  def generate_question(player)
    num1 = rand(9)+1
    num2 = rand(9)+1
    operator_id = rand(3)+1


    case operator_id
    when 1
      operator = 'plus'
      answer = num1 + num2
    when 2
      operator = 'minus'
      answer = num1 - num2
    when 3
      operator = 'multiplied by'
      answer = num1 * num2
    end


    print "#{player.name}, What is #{num1} #{operator} #{num2}?  >"

    player_answer = gets.chomp()

    if player_answer.to_i == answer.to_i then
      puts "#{player.name}... You are correct!!!"
    else
      puts "#{player.name}... YOU ARE WRONGGGGGG!!!!!"
      player.score -= 1
    end
  end


  def run
    
    puts "Welcome #{@player1.name} and #{@player2.name} !"

    puts "scores are: #{@player1.name}: #{@player1.score}, #{@player2.name}: #{@player2.score}"

    generate_question(@player1)
    puts "scores are: #{@player1.name}: #{@player1.score}, #{@player2.name}: #{@player2.score}"


  end

end

#-----------------------------------




# generate_question('ryan')