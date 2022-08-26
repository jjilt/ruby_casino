# menu
def menu()
  puts "Welcom to the Grand Casino"
  puts "Select a game"
  puts "1)" + "Slots"
  puts "2)" + "High-Low"
  puts "3)" + "View Wallet"
  puts "4)" + "Exit"
  menu_choice = gets.strip.to_i

    if menu_choice == 1
     play_slots
    elsif menu_choice == 2
        play_high-low 
    elsif menu_choice == 3
        view_wallet
    elsif menu_choice == 4
        exit
    else
        puts "Error: Select an option 1-4"
    end
    menu
end
menu
