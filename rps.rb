  class Game

    attr_accessor :player_one_choice, :computer

    def play
      puts "Let's play!"
      puts "Choose ROCK, PAPER, or SCISSORS"
      @player_one_choice = gets.chomp.upcase
      @computer = ["ROCK", "PAPER", "SCISSORS"].sample
        print "Player one selected:  "
        puts player_one_choice
        print "Computer selected:  "
        puts computer

        if player_one_choice == computer
          puts "It's a draw."
        elsif ((player_one_choice == "ROCK" && computer == "SCISSORS")||(player_one_choice == "PAPER" && computer == "ROCK")||(player_one_choice == "SCISSORS" && computer == "PAPER"))
          puts "Player one wins."
        else
          puts "Computer wins"
        end

    end
  end


  game = Game.new
  game.play
