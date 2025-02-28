require './lib/card'

class Deck
  def initialize(cards)
    @cards = cards
  end

  def count
    @cards.length
  end

  def cards_in_category(category)
    @cards.select do |cat|
      cat.category == category
    end
  end

end