'''
Creating score tracker that records the total points collected by the player in a text-based game
'''

again = true
player_points = 0 # players start with 0 points

puts "Welcome to the Adventure Game!\n You have 0 points."
while again # keep looping though the game until the user types 'exit' and ends the game
  puts "Choose a room (1-3) to enter or 'exit' to end the game: "
  choice = gets.chomp # gets the user input and removes the \n from it

  if choice == '1'
    puts "You entered Room 1 and earned 5 points."
    player_points += 5

  elsif choice == '2'
    puts "You entered Room 2 and earned 10 points."
    player_points += 10

  elsif choice == '3'
    puts "You entered Room 3 and earned 15 points."
    player_points += 15

  else
    puts "Game Over! You gained a total of #{player_points} points!"
    again = nil # stops the while loop and ends the game
  end
end
