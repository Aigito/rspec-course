RSpec.describe 'equality matchers' do # rubocop:disable Metrics/BlockLength
  let(:a) { 3 }
  let(:b) { 3.0 }

  describe 'eq matchers' do
    it 'tests for value and ignores type' do
      expect(a).to eq(3)
      expect(b).to eq(3.0)
      expect(a).to eq(b)
    end
  end

  describe 'eql matchers' do
    it 'tests for value, including same type' do
      expect(a).not_to eql(3.0)
      expect(b).not_to eql(3)
      expect(a).not_to eql(b)
    end
  end

  describe 'equal and be matcher' do # same things in memory
    let(:c) { [1, 2, 3] }
    let(:d) { [1, 2, 3] }
    let(:e) { c }

    it 'cares about object identity' do # equal cares about identity
      expect(c).to eq(d) # cares about value
      expect(c).to eql(d) # cares about value and value type

      expect(c).to equal(e) # care about value, value type and ID
      expect(c).to be(e) # be is an alias for equal

      expect(c).not_to equal(d)
      expect(c).not_to equal([1, 2, 3])
    end
  end
end
