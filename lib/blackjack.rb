hand = []

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  newcard = 1 + rand(11)
  return newcard
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
  return total
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  dec = gets.chomp
  return dec
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  hand_total = deal_card + deal_card
  display_card_total(hand_total)
  return hand_total
end

def hit?(number)
  prompt_user
  user_input = get_user_input
  
  until user_input == "h" || "s"
  invalid_command
  prompt_user
  user_input = get_user_input
  end
  
  if user_input == "h"
    number += deal_card
  elsif user_input == "s"
    number
  end
end

def invalid_command
  puts "Please enter an 'h' or an 's'"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  number = initial_round
  until number > 21
  number = hit?(number)
  display_card_total(number)
  end
end_game(number)
  
end
    
