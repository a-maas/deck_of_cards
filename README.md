# Deck Of Cards

## Usage
```ruby
load 'deck_of_cards.rb'
# => true
deck = DeckOfCards.new
# => #<DeckOfCards:0x007f92c31b3ac0 @cards=[#<2 of Clubs valued at 1>, #<3 of Clubs valued at 2>, ...]>

deck.deal 3
# => [#<2 of Clubs valued at 1>, #<3 of Clubs valued at 2>, #<4 of Clubs valued at 3>]

card_one = deck.draw_first
# => [#<2 of Spades valued at 1>

card_two = deck.draw_random
# => [#<4 of Diamonds valued at 3>

card_one > card_two
# => false
```