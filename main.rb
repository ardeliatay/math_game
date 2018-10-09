require './player.rb'
require './question.rb'

class Game
  
  attr_accessor :current_player, :p1, :p2
  
  def initialize()
    
    @p1 = Player.new()
    @p2 = Player.new()
    @question = Question.new()
    @current_player = "P1"

  end

  def play

    while @p1.lives > 0 && @p2.lives > 0 do
    puts @current_player
    @question.generate_question
    print "> "
    answer = $stdin.gets.chomp
    
    if @question.is_correct == answer.to_i 
      puts "Yay!! Correct."
      puts "P1: #{@p1.lives}/3 and P2: #{@p2.lives}/3"
    else
      puts "Boo!! Wrong Answer."
      if @current_player == "P1"
        @p1.lives -= 1
      else 
        @p2.lives -= 1
      end
      puts "P1: #{@p1.lives}/3 and P2: #{@p2.lives}/3"
    end
    puts "---NEW TURN---"
    switch_player
  end
  puts "Winner winner chicken dinner: #{@current_player}"
  puts "---GAME OVER---"


  end

  def switch_player
    
    if @current_player == "P2"
      self.current_player = "P1"
    else
      self.current_player = "P2"
    end

  end

end

game1 = Game.new()
puts game1.play















