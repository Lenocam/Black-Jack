def says(msg)
    puts "=>>> #{msg}"
end
    
suits = %w[hearts diamonds clubs spades]
names = %w[A 2 3 4 5 6 7 8 9 10 J Q K]

player_array = Array.new
dealers_array = Array.new

deck = suits.product(names)
shuffled_deck = deck.shuffle

  player_array << shuffled_deck.pop
  dealers_array << shuffled_deck.pop
  player_array << shuffled_deck.pop
  dealers_array << shuffled_deck.pop

hand_value = 0
  player_array.each do |card|
    if card[1] == "A"
      hand_value += 11
      
    elsif card[1].to_i == (2..10)
      hand_value += card[1].to_i
      binding.pry
    else 
      card[1] ==  'Q' || card[1] == 'J' || card[1] == 'K' 
      hand_value += 10
  end
end

says("player_array")
puts player_array
puts
says("dealers_array")
puts dealers_array
puts

puts hand_value
