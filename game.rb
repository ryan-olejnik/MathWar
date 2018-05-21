class Game
  def initialize(player1, palayer2)
    @player1 = player1
    @player2 = player2
  end


  def generate_question
    puts rand(10)+1
  end

  def run
    #START GAME!!
  end

end

#-----------------------------------

def generate_question(player)
  while true
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


    print "#{player}, What is #{num1} #{operator} #{num2}?  >"

    player_answer = gets.chomp()

    if player_answer.to_i == answer.to_i then
      puts "You are correct!!!"
    else
      puts "WRONGGGGGG!!!!!"
    end
  end



end


generate_question('ryan')