class Question
  attr_accessor :ask_question
  def initialize(player_name)
    @player_name = player_name
    @num1 = rand(9)+1
    @num2 = rand(9)+1
    operator_id = rand(3)+1
    case operator_id
    when 1
      @operator = 'plus'
      @answer = @num1 + @num2
    when 2
      @operator = 'minus'
      @answer = @num1 - @num2
    when 3
      @operator = 'multiplied by'
      @answer = @num1 * @num2
    end

    @ask_question = "#{@player_name}, What is #{@num1} #{@operator} #{@num2}?  >"    
  end

  def correct_answer?(players_answer)
    if players_answer.to_i == @answer.to_i
      true
    else
      false
    end
  end
end
