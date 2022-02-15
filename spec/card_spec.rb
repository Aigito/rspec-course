class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do # same as RSpec.describe('Card') do ('Card' can be a Class or empty too and is still valid syntax)
  # Option 1 - Before

  #   before do # before(optional arguments that can be put in)
  #     @card = Card.new('Ace', 'Spades')
  #   end

  # Option 2 - Method Definition

  # def card
  #   Card.new('Ace', 'Spades')
  # end

  # Option 3 - Let

  let(:card) { Card.new('Ace', 'Spades') } # let! is the same as using before do/end

  it 'has a rank and that rank can change' do # it/specify 'has a type' can be literally anything i.e. it/specify 'literally anything'
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end

  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    card.suit = 'Nonsense'
    comparison = 'Spades'
    # second argument for "to" method is the custom error message that you want to show
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but I got #{card.suit} instead"
  end
end
