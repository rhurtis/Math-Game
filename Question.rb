=begin
The Question class:
  -generate question, ask for answer, takes player input
  -evaluate whether input is right or wrong
  -if right: inform player they were correct
  -if wrong: inform player they were incorrect, life count is decremented.
=end

class Question

  attr_reader :question, :answer

  def initialize
    @question = generate_question
    @answer = eval(question)
  end

  def number1
    number1 = rand(1..20)
  end

  def number2
    number2 = rand(1..20)
  end

  def generate_question()
    question = "#{number1} + #{number2}" 
  end

end

