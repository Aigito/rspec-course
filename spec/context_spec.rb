RSpec.describe '#even? method' do
  # when you have conditional if statements, time to use context/describe
  # it 'should return true if even number'
  # it 'should return false if odd number'

  # can have multiple layers of context and/or describes
  context 'with even number' do
    it 'should return true' do
      expect(4.even?).to eq(true)
    end
  end

  context 'with odd number' do
    it 'should return false' do
      expect(5.even?).to eq(false)
    end
  end
end
