
# players
@p1 = { lives: 3 }
@p2 = { lives: 3 }
@turn = 0

def generate_question
  num1 = rand(1..20)
  num2 = rand(1..20)
  return :question => "what is #{num1} + #{num2} ?", :answer => num1 + num2
end

def verify_answer(correct_answer, player_answer)
  return correct_answer == player_answer
end

def wrong_answer
  if (@turn % 2 == 0)
    @p1[:lives] -= 1
  else
    @p2[:lives] -= 1
  end
end

def prompt_player_for_answer
  loop do
    if (@turn % 2 == 0)
      p "player 1..."
    else
      p "player 2..."
    end
    puts "player what is the answer to..."
    q_and_a = generate_question
    puts q_and_a[:question]
    player_answer = gets.chomp.to_i
    if verify_answer(q_and_a[:answer], player_answer)
      p "Hooray!!! You are Correct!!!"
    else 
      wrong_answer
      p "You are wrong!Player one's lives are #{@p1[:lives]}, and player two's lives are #{@p2[:lives]}!"
    end
    @turn +=1
    if @p1[:lives] == 0 || @p2[:lives] == 0
      p "game over player ones lives are(#{@p1[:lives]}) and player twos lives are(#{@p2[:lives]})!"
      break
    end
  end
end

prompt_player_for_answer