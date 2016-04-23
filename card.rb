class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    self.rank = rank
    self.suit = suit
  end

  def show_card
    puts "#{self.rank} of #{self.suit}."
  end

  def self.random_card
    Card.new(rand(1 ..10), :spades)
  end

end

class Deck

  def initialize
    @cards = []
    @ranks = [2,3,4,5,6,7,8,9,10,"Jack","Queen","King","Ace"]
    @suits = [:spades, :hearts, :clubs, :diamonds]
    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    return @cards.shift
  end

  def output
    @cards.each do |card|
      card.show_card
    end
  end
end
deck = Deck.new
deck.shuffle
deck.output
deck.deal
