def welcome
  puts "Welcome to the Blackjack Table"# code #welcome here
end

def deal_card
  1 + rand(11) # code #deal_card here
end

def display_card_total(total)
  puts "Your cards add up to #{total}" # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
  # code #prompt_user here
end

def get_user_input
  gets.chomp # code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"# code #end_game here
end

def initial_round
  first_card = deal_card
  second_card = deal_card
  puts "Your cards add up to #{first_card + second_card}"
  first_card + second_card # code #initial_round here
end

def hit?(card_total)
  prompt_user
  loop do
  answer = get_user_input
    if answer == "s"
      break
    elsif answer =="h"
      card_total += deal_card
      break
    else
      invalid_command
      prompt_user
    end
  end
  card_total
  # code hit? here
end



def invalid_command
  "Please enter a valid command"# code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  first_round = initial_round
  total = 0
    loop do
      total += hit?(first_round)
      display_card_total(total)
        if total > 21
          end_game(total)
          break
        end
    end
  # code runner here
end
