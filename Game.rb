=begin
The Game class:
  -current player (turn)
  -read life count check to see if it is 0.
  -if life count > 0 then switch players. Then ask another question.
  -if life count = 0 then declare a winner.
=end

# requiring necessary files
require './Player'
require './Question'
require './Turn_Manager'

class Game
  def initialize
    game_start
    @player1 = player1
    @player2 = player2
    playing_now
    game_finished
  end

  def game_start
    puts "Instructions:"
    puts "Answer the math question correctly."
    puts "If you get the question wrong you will lose a life."
    puts "You start with 3 lives, once you run out you lose the match."
  end

  def player1
    puts "Player 1 please enter your name: "
    player1Name = $stdin.gets.chomp
    player1 = Player.new(player1Name)
  end

  def player2
    puts "Player 2 please enter your name: "
    player2Name = $stdin.gets.chomp
    player2 = Player.new(player2Name)
  end

  def playing_now
    current_player = @player1
    while (@player1.lives > 0) && (@player2.lives > 0)
      Turn_Manager.new(current_player)
      puts('---- NEW TURN ----')
      puts "SCORE: #{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
      current_player == @player1 ? current_player = @player2 : current_player = @player1
    end
  end

  def game_finished
    @player1.lives > 0 ? winner = @player1 : winner = @player2
    if winner.lives > 1
      puts "#{winner.name} has won the game."
    else
      puts "#{winner.name} has won the game."
    end
    puts "Game Over"
  end

end