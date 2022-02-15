RSpec.describe Array do
  subject(:sally) do
    %w[name age]
  end

  it 'has a length of 2' do
    expect(sally.length).to eq(2)
    sally.pop
    expect(subject.length).to eq(1)
  end

  it 'is equal to the original array' do
    expect(sally.length).to eq(%w[name age])
  end
end
