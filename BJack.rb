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






#After the deck is shuffled I want to deal to to the dealer and a player.
Both will get two cards to start with, but I'll need to be able to add more later.
I'll want each card to be searchable by the 1 spot to go toward determining the value of the card.
The value of the card will need to pre-determined before this point. So i'll have to develop a way 
for the all the names on the cards to also have point values associated with them and for when
an Ace should be considered 1 point or 11 points. I think the best way to know when an Ace should be 1 or 11 
is to have the cards to be re-examined after everytime a player needs a new card. That way you don't assign a 
value to an Ace to early then have to walk it back before the hand total has already passed 21.
The rules are different for players and deal.
for the player to win he needs to have more > than the dealer but less than or equal to =< 21. Tie goes to the player.
Converserly, the dealer must have more > the player or less than or equal =< to 21 unless the player also has 21.


=end



