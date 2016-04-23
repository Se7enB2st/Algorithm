#Build a deck of cards
#Rule 1: Contains all 52 cards of the deck
#Rule 2: Able to shuffle the deck and output it at an random order

class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit) #Set the blue print of card (Every card need to have a rank and suit)
    self.rank = rank
    self.suit = suit
  end

  def show_card
    puts "#{self.rank} of #{self.suit}."
  end

  def self.random_card
    Card.new(rand(1 ..10), :Spades)
  end

end

class Deck

  def initialize
    @deck = [] #Set the deck of cards to an empty array
    @ranks = [2,3,4,5,6,7,8,9,10,"Jack","Queen","King","Ace"] #Array of ranks
    @suits = [:Diamonds, :Clubs, :Heart, :Spades] #Array of suits
    @ranks.each do |rank| #Loop through each rank
      @suits.each do |suit| #Each rank loop through the suits
        @deck << Card.new(rank, suit) #Trigger the Card class to create new card and insert the new card into deck array.
      end
    end
  end

  def shuffle
    @deck.shuffle! #Shuffle the deck
  end

  def deal
    return @deck.shift #Remove a card from a deck
  end

  def output
    @deck.each do |card| #Loop through each card of deck
      card.show_card #Show each card
    end
  end
end

deck = Deck.new
deck.shuffle
deck.deal
deck.output

