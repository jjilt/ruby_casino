require_relative "player"
  
class Casino
  attr_accessor :player  

  def initialize 
    @player = create_player
    menu
  end
  
  def create_player
    puts "What is your name?"
    @name = gets.strip
    puts "How much money you got?"
    @wallet = gets.strip.to_f
    Player.new(@name, @wallet)
  end

#play_slots and play_highlow, view_wallet need to go up here

def play_high_low
  puts "Welcome to Higher or Lower!"
  puts "1) Let's play!"
  puts "2) How to play"
  puts "3) Exit"

  user_input = gets.strip.to_i
  if user_input == 1
    hi_low_gm
  elsif user_input == 2
    how_to
  elsif user_input == 3
    puts "Thanks for playing!"
    exit 
  end
  menu
end


def hi_low_gm
  puts "What's your bet?"
    bet = gets.strip.to_i

    first_draw = (1 + rand(12))

    second_draw = (1 + rand(12))

  puts "The first card is a #{first_draw}"
  puts "Will the next card be higher of lower?"
  puts "1) Higher"
  puts "2) Lower"
  guess_input = gets.strip.to_i

  if guess_input == 1 && first_draw <= second_draw
      puts "The next card is a...... #{second_draw}"
      puts "You Win!"
      @player.change_wallet(bet)
  elsif guess_input == 1 && first_draw >= second_draw
      puts "The next card is a...... #{second_draw}"
      puts "Sorry, better luck next time."
      @player.change_wallet(-bet)
  elsif guess_input == 2 && first_draw >= second_draw
      puts "The next card is a...... #{second_draw}"
      puts "You Win!"
      @player.change_wallet(bet)
  elsif guess_input == 2 && first_draw <= second_draw
      puts "The next card is a...... #{second_draw}"
      puts "Sorry, better luck next time."
      @player.change_wallet(-bet)
  else
    puts "Please select a listed option"
  end
  menu
end


end



def how_to
  puts 'Welcome to "Higher or Lower"!'
  puts 'The rules of play are simple. When you begin the game'
  puts 'you will be asked to place your bet. After typing in the number'
  puts 'of chips you want to bet, hit enter.'
  puts 'You will then be presented with a card number.'
  puts 'You will then select if the next card will have a higher or'
  puts "lower number. If you guess correctly, then you get your bet"
  puts "added to your total chips. If you guess wrong, your bet gets"
  puts "deducted."
  puts "So what do you think? Is lady Luck on your side?"
  puts "PRESS 1 AND ENTER TO RETURN TO THE MENU"

  return_m = gets.strip.to_i
  if return_m == 1
    menu
  
end




  def menu
    puts "You are at the Grand Casino"
    puts "Select a game"
    puts "1)" + "Slots"
    puts "2)" + "High-Low"
    puts "3)" + "View Wallet"
    puts "4)" + "Exit"
    menu_choice = gets.strip.to_i

      if menu_choice == 1
          play_slots
      elsif menu_choice == 2
          play_high_low 
      elsif menu_choice == 3
          view_wallet
      elsif menu_choice == 4
          exit
      else
          puts "Error: Select an option 1-4"
      end
    end   
  menu


end







