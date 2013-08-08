def says(msg)
	puts "=>>> #{msg}"
end
	
suits = %w[hearts diamonds clubs spades]
names = %w[A 2 3 4 5 6 7 8 9 10 J Q K]

deck = suits.product(names)
shuffled_deck = deck.shuffle

says("shuffled_deck") 
p shuffled_deck
puts

player_array = Array.new
dealers_array = Array.new

player_array << shuffled_deck.pop
says("player_array")
puts
p player_array
puts

says("shuffled_deck after .pop to player player_array")
puts
p shuffled_deck
puts

dealers_array << shuffled_deck.pop
says("dealers_array")
puts
p dealers_array
puts

says("shuffled_deck after .pop to dealers_array")
p shuffled_deck

player_array << shuffled_deck.pop
says("player_array")
puts
p player_array
puts

says("shuffled_deck after second pop to player_array")
puts
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






#After the deck is shuffled I want to deal to to the dealer and a player.
Both will get two cards to start with, but I'll need to be able to add more to either hand later.
I'll want each card to be searchable by the 1 spot of the array to go toward determining the value of the card.
The value of the card will need to pre-determined before this point. So i'll have to develop a way 
for the all the names on the cards to also have point values associated with them and for when
an Ace should be considered 1 point or 11 points. I think the best way to know when an Ace should be 1 or 11 
is to have all the cards in a hand be re-examined after a player gets a new card then compared to the other hand at the end of a round.
That way you don't assign a value to an Ace to early then have to walk it back before the hand total has already passed 21.

The cards should only be shuffled once per game. Shuffle if the dealer has used more than 75% of the cards in the deck.

Hands
Player to win he needs to have more > than the dealer but less than or equal to =< 21. 
Converserly, the dealer must have more > the player or less than or equal =< to 21.
Tie is a draw.



=end



