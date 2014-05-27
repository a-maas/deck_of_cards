class Card
  include Comparable

  attr_reader :rank, :suit, :value

  def initialize rank, suit, value
    @rank  = rank
    @suit  = suit
    @value = value
  end

  def red?
    ( %w{Hearts Diamonds}.include? @suit ) ? true : false
  end

  def face_card?
    ( %w{J Q K}.include? @rank ) ? true : false
  end

  def <=> card
    self.value <=> card.value
  end
  
  def to_s
    "#{@rank} of #{@suit}"
  end

  def inspect
    "#<#{@rank} of #{@suit} valued at #{value}>"
  end

end