=begin
This will provide the turn logic for the game class/file.
=end

class Turn_Manager

  def initialize(player)
    @players_turn = player
    @question = Question.new
    @answer = @question.answer
    current_turn
  end

  def current_turn
    puts "#{@players_turn.name} it is your turn."
    puts "Answer this question #{@question.question}:"
    playerAnswer = $stdin.gets.chomp
    if playerAnswer.to_f == @answer && playerAnswer =~ /\d/
      puts "#{@players_turn.name} entered the correct answer."
    else
      @players_turn.life_lost
      puts "Wrong Answer. #{@players_turn.lives} live(s) remaining."
    end

  end

end