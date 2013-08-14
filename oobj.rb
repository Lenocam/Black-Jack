
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
  def output
    puts "Suit = #{find_suit}, Value: #{face_value}"
  end

  def to_s
    output
  end

  def find_suit
    ret_val = case suit
      when 'H' then 'Hearts'
      when 'D' then 'Diamonds'
      when 'S' then 'Spades'
      when 'C' then 'Clubs'
    end
    ret_val
  end      
end

class Deck
  attr_accessor :cards

  def initialize
    @cards = []
    %w[H D C S].each do |suit|
    %w[A 2 3 4 5 6 7 8 9 10 J Q K].each do |face_value|
      @cards << Card.new(suit, face_value)
    end
  end
    scramble!
  end

  def scramble!
    cards.shuffle!
  end

  def deal_one
    cards.pop
  end

  def size
    cards.size
  end
end


deck = Deck.new


puts deck.cards
puts deck.size
deck.deal_one.to_s
deck.deal_one.to_s
deck.deal_one.to_s
deck.deal_one.to_s
deck.deal_one.to_s
deck.deal_one.to_s
deck.deal_one.to_s

puts deck.size






class Player
  #has hand
  #hits
  #stays

end

class Dealer
  #has hand
  #hits
  #stays

end

class Hand
  #has cards from deck
  #calculated
  #added to
    #at beginning of hand
    #in hand based on choices from player(s)
    

end

class Table

end
