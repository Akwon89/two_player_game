@p1_lives = 3
@p2_lives = 3

def generate_question
  a=rand(1..20)
  b=rand(1..20)
  "what is #{a} + #{b} ?"
end

def verify_answer(question, player_answer)
  check=0
  question.scan(/\d/).map { |x| check += x.to_i }
  check
  if check == player_answer
    puts "You are Correct!"
  else
    puts "You are Wrong!"
  end
end

def prompt_player_for_answer
  loop do

    if 





    puts "player what is the answer to..."
    question=generate_question
    puts question
    player_answer=gets.chomp.to_i
    if verify_answer(question, player_answer)
    
      
      puts "You lost a life!"
      
    
    end
  end
end

p prompt_player_for_answer 
2 player game

2 players
take turn answering
simple addition questions
picking numbers from (1..20)
(Math.random)from(1..20)

example: player 1: what does 5+3 =?

players start with 3 lives
lose life is miss answered
wrong answer out put new score both players
ends when one player loses all lives
announce who won with the score


methods

player1_lives = 3
player2_lives = 3