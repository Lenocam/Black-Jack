suits = %w[hearts diamonds clubs spades]
names = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
deck = suits.product(names)
shuffled_deck = deck.shuffle 
p shuffled_deck


=begin
do 2.times {player_cards = shuffled_deck.pop}
puts
p shuffled_deck
puts
p player_cards
shuffled_deck.pop
puts
p shuffled_deck

p 'do you want to hit Y for yes or N for No'
=end



