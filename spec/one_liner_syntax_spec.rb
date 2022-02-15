RSpec.describe 'shorthand syntax' do
  subject { 5 } # again subject == "shorthand syntax".new()

  context 'with classic syntax' do
    it 'should equal 5' do
      expect(subject).to eq(5)
    end
  end

  context 'with one-liner syntax' do
    # this one liner syntax is equal to line 5-7, only available with subjects
    it { is_expected.to eq(5) }
  end
end
