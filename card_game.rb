class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end

  def show_card
    puts "#{@rank} of #{@suit}."
  end
end

card = Card.new(10, :spades)
card.rank = 7
card.suit = "club"
card.show_card
