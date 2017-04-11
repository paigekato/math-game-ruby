require './questions.rb'
require './players.rb'

class Game

    def initialize
      puts 'Welcome to Paige\'s Crazy Math Games'
      sleep(1)
      puts 'Please enter your name, PLAYER 1:'
      name1 = gets.chomp
      @player1 = Players.new(gets.chomp)
      puts 'Please enter your name, PLAYER 2:'
      name2 = gets.chomp
      @player2 = Players.new(gets.chomp)
      sleep(1)
      puts "Okay, #{@player1.name} and #{@player2.name}...."
      puts 'Let us begin...'
    end

    def question
      question = Question.new
      @query = question.question
      @ans = question.answer
      sleep(1)
      puts ' -- NEW QUESTION -- '
      if @player1.turn
        sleep(1)
        puts "  - #{@player1.name} -"
        puts "#{@query}"
      else
        sleep(1)
        puts "    - #{@player2.name} - "
        puts "#{@query}"
      end
    end

#check answer
    def check_answer
      if STDIN.gets.chomp.to_i == @ans
        if @player1.turn
          @player1.life += 1
          puts 'You are correct!'
          @player1.turn = false
          @player2.turn = true
          life
          win?
        else
          @player2.life += 1
          puts 'You are correct!'
          @player1.turn = true
          @player2.turn = false
          life
          win?
        end
      else
        if @player1.turn
          puts "#{@player1.name}: WRONG!"
          @player1.turn = false
          @player2.turn = true
          sleep(1)
          puts "The corrent answer was #{@ans}."
          life
          win?
        else
          puts "#{@player2.name}: WRONG!"
          @player1.turn = true
          @player2.turn = false
          sleep(1)
          puts "The corrent answer was #{@ans}."
          life
          win?
        end
      end
    end


#what is the life?
    def life
      sleep(1)
      puts "  Current score: "
      puts "#{@player1.name}: #{@player1.life.to_s}/3 -- #{@player2.name}: #{@player2.life.to_s}/3}"
    end

#whos turn is it?
    def turn
      question
      check_answer
    end

#is the game over yet?
    def game_over?
      @life <= 0
    end

#winner?chicken dinner?
    def win?
      if @player1.life == 3
        sleep(1)
        puts ' - GAME OVER -'
        sleep(1)
        puts "#{@player1.name} wins!"
        sleep(1)
        puts 'THANK YOU, PLAY AGAIN!'
      elsif @player2.life == 3
        puts ' - GAME OVER -'
        sleep(1)
        puts "#{@player1.name} wins!"
        sleep(1)
        puts 'THANK YOU, PLAY AGAIN!'
      else
        turn
      end
    end

end #end of class

