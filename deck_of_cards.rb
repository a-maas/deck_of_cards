require './card.rb'

class DeckOfCards

  attr_reader :cards

  RANKS = %w{2 3 4 5 6 7 8 9 10 J Q K A}
  SUITS = %w{Clubs Diamonds Hearts Spades}

  def initialize
    @cards = []
    SUITS.each do |suit|
      RANKS.each_with_index do |rank, i|
        @cards.push Card.new( rank, suit, i+1 )
      end
    end
  end

  def deal number
    number.times.collect { @cards.shift }.compact!
  end
  
  def draw_first
    @cards.shift
  end
  
  def draw_random
    @cards.delete_at( rand( @cards.length ) )
  end

  def order
    @cards.sort_by { |card| [SUITS.index(card.suit), RANKS.index(card.rank)] }
  end

  def search_for_card suit, rank
    @cards.select { |card| card.suit == suit && card.rank.to_s == rank.to_s }.first
  end

  def shuffle
    @cards.shuffle!
  end

  def split
    slices = @cards.each_slice( ( @cards.size / 2.0 ).round ).to_a
    @cards = slices.insert(0, slices.delete_at(1)).flatten
  end

end