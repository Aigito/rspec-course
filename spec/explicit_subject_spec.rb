RSpec.describe Hash do
  subject(:something) do
    { a: 1, b: 2 }
  end

  # Line 2-4 is the same as let(:something) { { a: 1, b: 2 } }

  it 'has two key value pairs' do
    expect(subject.length).to eq(2)
    expect(something.length).to eq(2)
  end

  describe 'nested example' do
    it 'has two key-value pairs' do
      expect(subject.length).to eq(2)
      expect(something.length).to eq(2)
    end
  end
end
