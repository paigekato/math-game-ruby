class Question
  attr_reader :question, :answer

  SYMS = { "+" => :+, "-" => :-, "x" => :* }

  def initialize
    num1 = rand(1..20)
    num2 = rand(1..20)
    equation = SYMS.to_a.sample
    @answer = num1.send(equation[1], num2)
    @question = "What is #{num1.to_s} #{equation[0]} #{num2.to_s}?"
  end
end