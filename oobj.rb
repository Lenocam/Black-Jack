#class Game
#  def method_name
    
#  end
#end

class Card
  attr_accessor :suit, :face_value
    
def initialize(suit, face_value)
  @suit = suit
  @face_value = face_value    
end

end

class Deck < Card
    suits      = %w[hearts diamonds clubs spades]
    face_value = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
  
  def initialize (suit, face_value)
    @suit = suit
    @face_value = face_value
    
  end
  def create_deck
    decked = suits.product(face_value)
  end
end
p Deck.create_deck

#Deck = 52 Card
#Card = suit & face_value
  #suit = %w[Hearts Diamonds Clubs Spades]
  #face_value = %w[A 2 3 4 5 6 7 8 9 10 J Q K]
=begin
class Deck

end



class Player

end
class Dealer

end

class Hand

end

class Table

end

c1 = Card.new
=end