RSpec.describe 'start_with and end_with matchers' do
  describe 'caterpillar' do
    it 'should check for substring at the beginning or end' do
      expect(subject).to start_with('cat')
      expect(subject).to end_with('llar')

      expect(subject.capitalize).to start_with('Cat')
    end

    it { is_expected.to start_with('cat') }
    it { is_expected.to end_with('illar') }
  end

  describe [:a, :b, :c, :d] do
    it 'should check for elements at begginging or end of the array' do
      expect(subject).to start_with(:a)
      expect(subject).to start_with(:a, :b, :c)
      expect(subject).to end_with(:c, :d)
    end

    it { is_expected.to start_with(:a, :b) }
    it { is_expected.to end_with(:d) }
    it { is_expected.not_to end_with(:a, :c) }
  end
end
