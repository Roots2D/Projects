require_relative 'card.rb'

class Deck
  def self.all_cards
    deck = []

    Card.suits.each do |suit|
      Card.values.each do |value|
        deck << Card.new(suit, value)
      end
    end

    Deck.shuffle(deck)
  end

  # add a shuffle method

  def initialize(cards = Deck.all_cards)
    @deck = cards
  end

  def count
    @deck.count
  end

  def empty?
    @deck.empty?
  end

  def take(n)
    raise 'not enough cards' if n > count
    taken = @deck.take(n)
    @deck = @deck.drop(n)
    taken
  end

  private

  def self.shuffle(deck)
    deck.shuffle
  end
end
