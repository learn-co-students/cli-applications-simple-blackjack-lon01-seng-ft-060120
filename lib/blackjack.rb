def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(num)
  puts "Your cards add up to #{num}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(num)
if num == 21
  puts "BLACKJACK!"
else
  puts "Sorry, you hit #{num}. Thanks for playing!"
end
end

def initial_round
total =0
total +=deal_card
total += deal_card

display_card_total(total)
total

end

def invalid_command
  puts 'Please enter a valid command'
end

def hit?(num)
  prompt_user
  input =get_user_input
  if input == 'h'
    num += deal_card;
    return num
  else if input =='s'
    return num;
  else
    invalid_command;
   prompt_user;
   get_user_input;
  end
end
end

def runner
  welcome
  total = initial_round
  until total >= 21
  total= hit?(total)
  display_card_total(total)
  end
  if total == 21
  end_game(total)
  end
  end_game(total)
end