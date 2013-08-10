def calculate (card)
  arr = card.map { |e| e[1]  }

  hand = 0
    arr.each do |value|
      if value == "A"
        hand += 11
      elsif (2..10).include?(value.to_i) 
        hand += value.to_i
      else 
        hand += 10
    end
  end
  #Aces are systematic
  arr.select { |e| e == 'A'}.count.times do
    hand -= 10 if hand > 21
  end
  hand
end    


puts "Welcome to Blackjack!"
puts ""
puts ""

suits = %w[hearts diamonds clubs spades]
names = %w[A 2 3 4 5 6 7 8 9 10 J Q K]

deck = suits.product(names)
shuffled_deck = deck.shuffle

#Deal Cards

players_array = Array.new
dealers_array = Array.new

  players_array << shuffled_deck.pop
  dealers_array << shuffled_deck.pop
  players_array << shuffled_deck.pop
  dealers_array << shuffled_deck.pop

dealers_hand = calculate(dealers_array)
players_hand = calculate(players_array)

#Show Cards


puts "Dealer's Hand: #{dealers_array} = #{dealers_hand}"
puts "Player's Hand: #{players_array} = #{players_hand}"
puts ""
puts ""


#Players Turn

if players_hand == 21
  puts "Boom goes the Dynamite!...Blackjack!...You Win!"
  puts "You hit #{players_hand}"
  exit
end

while players_hand < 21
  puts "What would you like to do: 1) Hit 2) Stay"
  hit_or_stay = gets.chomp

  if !['1', '2'].include?(hit_or_stay)
    puts "Error: Press 1 for Hit or 2 to Stay"
    next
  end

  if hit_or_stay == "2"
    puts "You chose to stay."
    break
  end

  #hit
  new_card = shuffled_deck.pop
  puts "Dealing card to player: #{new_card}"
  players_array << new_card
  players_hand = calculate(players_array)
  puts "Your total is now: #{players_hand}"

  if players_hand == 21
    puts "You've achieved victory, by squashing your enemy with 21"
    exit
  elsif players_hand > 21
    puts "You Lose!"
    puts "That feeling is called shame. Embrace it."
    puts "Shh...You look so sad."
    exit
  end
end

#Dealers Turn

if dealers_hand == 21
  puts "Sorry, dealer hit blackjack"
  puts "It's not your lucky day"
  exit
end

while dealers_hand < 17
  #hit
  new_card = shuffled_deck.pop
  puts "Dealing new card for dealer: #{new_card}"
  dealers_array << new_card
  dealers_hand = calculate(dealers_array)
  puts "The Dealer's new total is #{dealers_hand}"

  if dealers_hand == 21
    puts "Sorry you Lose"
    puts "So Sad"
    exit
  elsif dealers_hand > 21
    puts "Congratulations! You win!"
    exit    
  end
end

#Compare Hands

puts "Dealer's Cards:"
dealers_array.each do |card|
  puts "=> #{card}"
end
puts ""

puts "Your Cards:"
players_array.each do |card|
  puts "=> #{card}"
end
puts ""

if dealers_hand > players_hand
  puts "Sorry, the dealer wins"
elsif dealers_hand < players_hand
  puts "Congratulations, you win!"
else
  puts "It's a tie"
end 

exit

  