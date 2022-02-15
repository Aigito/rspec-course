class Prince
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

# Instead of King.new described_class references the class under Test
# So no matter what the name is (Prince/King), it is still referencing the same thing
# Pain point solved: Not needing to replace 30 King.new to Prince.new

RSpec.describe Prince do
  subject { described_class.new('Boris') }
  let(:louis) { described_class.new('Louis') }

  it 'represents a great person' do
    expect(subject.name).to eq('Boris')
    expect(louis.name).to eq('Louis')
  end
end
