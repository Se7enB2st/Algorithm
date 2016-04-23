class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def show_card
    puts "#{@rank} of #{@suit}."
  end

  def self.random_card
    Card.new(rand(10), :spades)
  end
end

card = Card.random_card
card.show_card
