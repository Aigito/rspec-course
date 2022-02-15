RSpec.describe 'nested hooks' do
  before(:context) do
    puts 'OUTER Before context'
  end

  before(:example) do
    puts 'OUTER Before example'
  end

  it 'OUTER does basic math' do
    expect(1 + 1).to eq(2)
  end

  context 'with condition A' do
    before(:context) do
      puts 'INNER Before context'
    end

    before(:example) do
      puts 'INNER Before example'
    end

    it 'INNER dose basic math #1' do
      expect(2 * 5).to eq(10)
    end

    it 'INNER dose basic math #2' do
      expect(6 - 4).to eq(2)
    end
  end
end
