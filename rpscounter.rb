
  class Game

    def initialize

    end

    attr_accessor :player_one_choice, :computer

    def play
      count = 0
      choices = []
      puts "Welcome to the computer simulated statistical rock paper scissors analyzer."

      while count < 1000
      @player_one_choice = ["ROCK", "PAPER", "SCISSORS"].sample
      @computer = ["ROCK", "PAPER", "SCISSORS"].sample
          if player_one_choice == computer
            elsif ((player_one_choice == "ROCK" && computer == "SCISSORS")||(player_one_choice == "PAPER" && computer == "ROCK")||(player_one_choice == "SCISSORS" && computer == "PAPER"))
              choices << player_one_choice
            else
              choices << computer
          end
      count += 1
      end

    rock = []
    paper = []
    scissors = []

    choices.select {|choice| choice.length == 4}
    .each {|choice| rock << choice}
    rockpercent = ((rock.count)/1000.0)*100
    puts "Out of 1000 turns rock won #{rock.count} times. Rock won #{rockpercent}% of the time"

    choices.select {|choice| choice.length == 5}
    .each {|choice| paper << choice}
    paperpercent = ((paper.count)/1000.0)*100
    puts "Out of 1000 turns paper won #{paper.count} times. Paper won #{paperpercent}% of the time"

    choices.select {|choice| choice.length == 8}
    .each {|choice| scissors << choice}
    scissorspercent = ((scissors.count)/1000.0)*100
    puts "Out of 1000 turns scissors won #{scissors.count} times. Scissors won #{scissorspercent}% of the time"

    end


  end

  game = Game.new
  game.play
