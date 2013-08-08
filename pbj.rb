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

hand_count = 0
  player_array.each do |names|
    if names
    
  end



says("player_array")
p player_array
puts
says("dealers_array")
p dealers_array
puts

