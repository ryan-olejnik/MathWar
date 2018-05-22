require './player.rb'
require './question.rb'

class Game
  def initialize(player1Name, player2Name)
    @player1 = Player.new(player1Name)
    @player2 = Player.new(player2Name)
    @current_players_turn = rand(2)+1
  end

  def game_over?
    if @player1.score == 0
      puts "Game Over! #{@player2.name} Wins!!!"
      true
    elsif @player2.score == 0
      puts "Game Over! #{@player1.name} Wins!!!"
      true
    else
      false
    end
  end

  def run
    puts "Welcome #{@player1.name} and #{@player2.name} !"
    sleep 1
    puts
    while !game_over?
      if @current_players_turn == 1
        question = Question.new(@player1.name)
        puts question.ask_question
        player_answer = gets.chomp
        if question.correct_answer?(player_answer)
          puts "#{@player1.name}, you are CORRECT!!"
        else
          puts "#{@player1.name}, you are WRONG!!"
          @player1.subtract_point
        end
        @current_players_turn = 2

      elsif @current_players_turn == 2
        question = Question.new(@player2.name)
        puts question.ask_question
        player_answer = gets.chomp
        if question.correct_answer?(player_answer)
          puts "#{@player2.name}, you are CORRECT!!"
        else
          puts "#{@player2.name}, you are WRONG!!"
          @player2.subtract_point
        end
        @current_players_turn = 1
      end
      sleep 1
      puts "scores are: #{@player1.name}: #{@player1.score}, #{@player2.name}: #{@player2.score}"
      puts
    end
  end
end

